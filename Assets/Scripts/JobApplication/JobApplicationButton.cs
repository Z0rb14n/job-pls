using System;
using Interview;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace JobApplication
{
    public class JobApplicationButton : MonoBehaviour
    {
        [SerializeField] private TextMeshProUGUI displayedText;
        [SerializeField] private Button button;
        [SerializeField] private TextMeshProUGUI buttonText;
        [SerializeField] private GameObject resumeScreenUI;
        [SerializeField] private GameObject interviewUI;
        private JobApplicationData _jobData;

        public JobApplicationData JobData
        {
            get => _jobData;
            set
            {
                if (_jobData) _jobData.OnModify -= JobDataOnOnModify;
                _jobData = value;
                if (_jobData)
                {
                    _jobData.ApplicationState = _jobData.testStartState; // for testing purposes REMOVE LATER
                    _jobData.OnModify += JobDataOnOnModify;
                    JobDataOnOnModify();
                }
            }
        }

        private void JobDataOnOnModify()
        {
            displayedText.text =
                $"[{Enum.GetName(typeof(JobApplicationState), _jobData.ApplicationState)}] {_jobData.personName}";
            switch (_jobData.ApplicationState)
            {
                case JobApplicationState.Unscreened:
                    buttonText.text = "Review Resume";
                    break;
                case JobApplicationState.NeedDecision:
                    buttonText.text = "Make Final Decision";
                    break;
                case JobApplicationState.NeedInterview:
                    buttonText.text = "Interview";
                    break;
            }

            button.interactable =
                _jobData.ApplicationState is not (JobApplicationState.Rejected or JobApplicationState.PreOA);
            if (_jobData.ApplicationState == JobApplicationState.Rejected)
            {
                Destroy(button.gameObject);
            }
        }

        public void OnButtonPressed()
        {
            switch (_jobData.ApplicationState)
            {
                case JobApplicationState.Unscreened:
                    GameObject go = Instantiate(resumeScreenUI);
                    go.GetComponent<ResumeScreenUI>().DisplayJobApplication(_jobData);
                    break;
                case JobApplicationState.NeedInterview:
                    go = Instantiate(interviewUI);
                    go.GetComponent<InterviewScreen>().Show(_jobData);
                    break;
            }
        }
    }
}