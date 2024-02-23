using System;
using System.Collections;
using System.Collections.Generic;
using Ink.Runtime;
using JobApplication;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using Util;

namespace Interview
{
    public class InterviewScreen : MonoBehaviour
    {
        [Tooltip("Array of buttons for choices, in the same order as the hierarchy.")]
        public Button[] buttons;

        public TextMeshProUGUI dialogueText;
        public Sprite interviewerSprite;
        public RectTransform peopleSprites;
        public GameObject personSpritePrefab;

        private JobApplicationData _interviewee;
        private BranchingStory _story;

        public DialogueTriggerActions DialogueActions { get; set; }

        public Sprite[] DisplayedPeople
        {
            get
            {
                Sprite[] array = new Sprite[peopleSprites.childCount];
                for (int i = 0; i < array.Length; i++)
                {
                    array[i] = peopleSprites.GetChild(i).GetComponent<Image>()?.sprite;
                }

                return array;
            }
            set
            {
                value ??= Array.Empty<Sprite>();
                ObjectUtil.EnsureLength(peopleSprites, value.Length, personSpritePrefab);
                for (int i = 0; i < value.Length; i++)
                {
                    peopleSprites.GetChild(i).GetComponent<Image>().sprite = value[i];
                }
            }
        }

        private void Awake()
        {
            DialogueActions = GetComponent<DialogueTriggerActions>();
            for (int i = 0; i < buttons.Length; i++)
            {
                Button b = buttons[i];
                if (b == null) continue;
                int i1 = i;
                b.onClick.AddListener(() =>
                {
                    _story.MakeChoice(i1);
                    StartCoroutine(AdvanceDialogueAndShow());
                });
                b.gameObject.SetActive(false);
            }
        }

        /// <summary>
        /// Coroutine that advances the dialogue line by line, skipping empty lines, and types out each line.
        /// After the last line of dialogue is shown, shows the choices upon a key press.
        /// <para>If it encounters an end tag or input tag, however, the coroutine will stop and control will be given to the
        /// respective behaviours (closing the dialogue/showing the input UI).</para>
        /// </summary>
        public IEnumerator AdvanceDialogueAndShow()
        {
            HideChoices();
            while (_story.CanContinue)
            {
                _story.Continue();
                _story.RunTriggers();
                if (_story.CurrentTags.ContainsKey("end"))
                {
                    // Stop this coroutine and hide the dialogue screen - ensures this coroutine won't be called again
                    Hide();
                    yield break;
                }

                string line = _story.CurrentLine;
                if (!string.IsNullOrWhiteSpace(line))
                {
                    DialogueUtils.ExtractSpokenLine(line, out string text, out string speaker);

                    if (speaker != null && _interviewee && _interviewee.voice)
                    {
                        AudioSource.PlayClipAtPoint(_interviewee.voice, Vector3.zero);
                    }

                    dialogueText.text = line;

                    // Wait for next key press to advance dialogue.
                    while (!Input.GetKeyDown(KeyCode.Space))
                    {
                        yield return null;
                    }

                    if (_story.CanContinue) yield return null;
                }
            }

            // Wait for button press, which will restart this coroutine.
            ShowChoices();
        }

        /// <summary>
        /// Hides all choices.
        /// </summary>
        private void HideChoices()
        {
            foreach (Button t in buttons)
            {
                if (t != null) t.gameObject.SetActive(false);
            }
        }

        /// <summary>
        /// Shows the current choices at this point in the story.
        /// </summary>
        private void ShowChoices()
        {
            List<Choice> choices = _story.CurrentChoices;

            Debug.Log("Showing " + choices.Count + " choices.");

            for (int i = 0; i < buttons.Length; i++)
            {
                if (buttons[i] == null) continue;
                if (i < choices.Count)
                {
                    buttons[i].GetComponentInChildren<TextMeshProUGUI>().text = choices[i].text;
                    buttons[i].gameObject.SetActive(true);
                }
                else
                {
                    buttons[i].gameObject.SetActive(false);
                }
            }
        }

        /// <summary>
        /// Changes the character sprite to the given interviewee.
        /// </summary>
        /// <param name="interviewee">Interviewee whose sprite we want to display.</param>
        public void Show(JobApplicationData interviewee)
        {
            _interviewee = interviewee;
            DisplayedPeople = new[] { interviewerSprite, _interviewee.image };

            _story = new BranchingStory();
            if (DialogueActions) _story.StoryAction += DialogueActions.ExecuteAction;
            _story.Initialize(interviewee.interviewStory);
            _story.Continue();
            _story.MakeChoice(interviewee.id);

            StartCoroutine(AdvanceDialogueAndShow());
        }

        public void ShowCutscene(TextAsset asset, string cutsceneId, Sprite[] sprites)
        {
            DisplayedPeople = sprites;

            _story = new BranchingStory();
            if (DialogueActions) _story.StoryAction += DialogueActions.ExecuteAction;
            _story.Initialize(asset);
            _story.Continue();
            _story.MakeChoice(cutsceneId);
            StartCoroutine(AdvanceDialogueAndShow());
        }

        /// <summary>
        /// Closes the interview screen by destroying the game object.
        /// </summary>
        public void Hide()
        {
            if (_interviewee)
            {
                _interviewee.OnFinishInterview(true);
            }

            Destroy(gameObject);
        }
    }
}