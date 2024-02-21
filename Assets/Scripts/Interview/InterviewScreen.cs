using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Ink.Runtime;
using JobApplication;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace Interview
{
    public class InterviewScreen : MonoBehaviour
    {
        [Tooltip("Array of buttons for choices, in the same order as the hierarchy.")]
        public Button[] buttons;
        public TextMeshProUGUI dialogueText;
        public Image intervieweeSprite;
        
        private JobApplicationData _interviewee;
        private BranchingStory _story;
        
        private void Awake()
        {
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
    
                    if (speaker != null)
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
            intervieweeSprite.sprite = _interviewee.image;

            _story = new BranchingStory();
            _story.Initialize(interviewee.interviewStory);
            _story.Continue();
            int index = _story.CurrentChoices.IndexOf(
                _story.CurrentChoices.FirstOrDefault(choice => !choice.text.StartsWith("_") && choice.text.Contains(interviewee.id)));
            if (index != -1) _story.MakeChoice(index);

            StartCoroutine(AdvanceDialogueAndShow());
        }

        /// <summary>
        /// Closes the interview screen by destroying the game object.
        /// </summary>
        public void Hide()
        {
            _interviewee.ApplicationState = JobApplicationState.NeedDecision;
            _interviewee.SignalModified();
            Destroy(gameObject);
        }
    }
}