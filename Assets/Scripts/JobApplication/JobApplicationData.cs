using System;
using JobApplication.Resume;
using UnityEngine;
using Random = UnityEngine.Random;

namespace JobApplication
{
    /// <summary>
    /// Data for an individual application.
    /// </summary>
    [CreateAssetMenu(fileName = "NewApplicationData", menuName = "JobApp/Application Data")]
    public class JobApplicationData : ScriptableObject
    {
        public Sprite image;

        public TextAsset interviewStory;
        public string id;
        public string personName;

        public ResumeData resume;

        public AudioClip voice;

        public JobApplicationState testStartState;

        public int onlineAssessmentScore;

        public bool shouldReceiveInterview;

        public bool otherInterviewerFirst;

        private JobApplicationState _state = JobApplicationState.Unscreened;
        [NonSerialized] public int CompletedInterviewRounds;

        [NonSerialized] public int DaysBeforeNextStage;
        [NonSerialized] public int NumOtherInterviewRounds;

        public JobApplicationState ApplicationState
        {
            get => _state;
            set
            {
                _state = value;
                OnModify?.Invoke();
            }
        }

        private void Awake()
        {
            ApplicationState = JobApplicationState.Unscreened;
        }

        public event Action OnModify;

        public void BeginOtherInterviews()
        {
            NumOtherInterviewRounds = Random.Range(1, 7);
            DaysBeforeNextStage = Random.Range(1, 3);
            ApplicationState = JobApplicationState.PreOtherInterviewer;
        }

        public void OnResumeScreenDiscard()
        {
            ApplicationState = JobApplicationState.Rejected;
        }

        public void OnPostInterviewReject()
        {
            ApplicationState = JobApplicationState.Rejected;
        }

        public void OnPostInterviewProceed()
        {
            BeginOtherInterviews();
            OnModify?.Invoke();
        }

        public void OnFinalReject()
        {
            ApplicationState = JobApplicationState.Rejected;
        }

        public void OnFinalAccept()
        {
            ApplicationState = JobApplicationState.Accepted;
        }

        public void OnResumeScreenSendNext()
        {
            if (ApplicationState == JobApplicationState.Unscreened)
                ApplicationState = JobApplicationState.PreOA;
            else
            {
                if (otherInterviewerFirst)
                {
                    BeginOtherInterviews();
                }
                else
                {
                    ApplicationState = JobApplicationState.NeedInterview;
                }
            }

            DaysBeforeNextStage = Random.Range(0, 3);
        }

        public void OnFinishInterview(bool manual)
        {
            CompletedInterviewRounds++;
            switch (manual)
            {
                case true when !otherInterviewerFirst:
                    ApplicationState = JobApplicationState.PostInterview;
                    return;
                case true:
                    ApplicationState = JobApplicationState.NeedDecision;
                    break;
                case false:
                    NumOtherInterviewRounds--;
                    if (NumOtherInterviewRounds <= 0)
                    {
                        ApplicationState = otherInterviewerFirst
                            ? JobApplicationState.NeedInterview
                            : JobApplicationState.NeedDecision;
                    }
                    else DaysBeforeNextStage = Random.Range(1, 3);

                    break;
            }

            OnModify?.Invoke();
        }

        public void OnDayPass()
        {
            if (_state == JobApplicationState.PreOA)
            {
                DaysBeforeNextStage--;
                if (DaysBeforeNextStage <= 0)
                    ApplicationState = JobApplicationState.PostOA;
            }
            else if (ApplicationState == JobApplicationState.PreOtherInterviewer)
            {
                DaysBeforeNextStage--;
                if (DaysBeforeNextStage <= 0)
                {
                    OnFinishInterview(false);
                }
            }
        }
    }
}