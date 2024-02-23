using System;
using UnityEngine;

namespace JobApplication
{
    /// <summary>
    /// Data for an individual application.
    /// </summary>
    [CreateAssetMenu(fileName = "NewApplicationData", menuName = "Job Application")]
    public class JobApplicationData : ScriptableObject
    {
        public Sprite image;

        public TextAsset interviewStory;
        public string id;
        public string personName;

        [TextArea(minLines: 3, maxLines: 20)] public string resume;

        public AudioClip voice;

        public JobApplicationState testStartState;

        public int onlineAssessmentScore;

        public bool shouldReceiveInterview;

        [NonSerialized] public JobApplicationState ApplicationState;

        [NonSerialized] public int DaysBeforeNextStage;

        private void Awake()
        {
            ApplicationState = JobApplicationState.Unscreened;
        }

        public event Action OnModify;

        public void SignalModified() => OnModify?.Invoke();
    }
}