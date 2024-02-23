using System.Linq;
using Interview;
using UnityEngine;

namespace Cutscene
{
    [DisallowMultipleComponent]
    public class CutsceneRunner : MonoBehaviour
    {
        [SerializeField] private TextAsset dialogue;
        [SerializeField] private string cutsceneId;
        [SerializeField] private Sprite[] sprites;
        [SerializeField] private GameObject interviewUI;

        public InterviewScreen Screen { get; private set; }

        private void Awake()
        {
            GameObject go = Instantiate(interviewUI);
            Screen = go.GetComponent<InterviewScreen>();
            Screen.DialogueActions = GetComponent<DialogueTriggerActions>();
            Screen.ShowCutscene(dialogue, cutsceneId, sprites);
        }

        public void RemoveSprite(Sprite toRemove)
        {
            Screen.DisplayedPeople = Screen.DisplayedPeople.Where(sprite => sprite != toRemove).ToArray();
        }

        public void AddSprite(Sprite toAdd)
        {
            Screen.DisplayedPeople = Screen.DisplayedPeople.Append(toAdd).ToArray();
        }
    }
}