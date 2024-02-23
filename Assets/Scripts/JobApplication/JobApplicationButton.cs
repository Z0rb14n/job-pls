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
        [SerializeField] private GameObject finalDecisionUI;
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

        private string GetDisplayedStatus()
        {
            if (_jobData.ApplicationState is JobApplicationState.PreOtherInterviewer
                or JobApplicationState.NeedInterview)
            {
                return $"Interview: Round {_jobData.CompletedInterviewRounds + 1}";
            }

            return Enum.GetName(typeof(JobApplicationState), _jobData.ApplicationState);
        }

        private void JobDataOnOnModify()
        {
            displayedText.text = $"[{GetDisplayedStatus()}] {_jobData.personName}";
            switch (_jobData.ApplicationState)
            {
                case JobApplicationState.PostOA:
                case JobApplicationState.Unscreened:
                    buttonText.text = "Review Resume";
                    button.interactable = true;
                    break;
                case JobApplicationState.NeedDecision:
                    buttonText.text = "Make Final Decision";
                    button.interactable = true;
                    break;
                case JobApplicationState.NeedInterview:
                    buttonText.text = "Interview";
                    button.interactable = true;
                    break;
                case JobApplicationState.PreOA:
                    buttonText.text = "Awaiting on OA";
                    button.interactable = false;
                    break;
                case JobApplicationState.PreOtherInterviewer:
                    buttonText.text = "Awaiting on other interviews";
                    button.interactable = false;
                    break;
                case JobApplicationState.Rejected:
                    buttonText.text = "Rejected";
                    button.interactable = false;
                    break;
                case JobApplicationState.Accepted:
                    buttonText.text = "Accepted";
                    button.interactable = false;
                    break;
                default:
                    buttonText.text = "Rejected";
                    button.interactable = false;
                    Debug.Log("???? argument out of range");
                    break;
            }

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
                case JobApplicationState.PostOA:
                    GameObject go = Instantiate(resumeScreenUI);
                    go.GetComponent<ResumeScreenUI>().DisplayJobApplication(_jobData);
                    break;
                case JobApplicationState.NeedInterview:
                    go = Instantiate(interviewUI);
                    go.GetComponent<InterviewScreen>().Show(_jobData);
                    break;
                case JobApplicationState.NeedDecision:
                    go = Instantiate(finalDecisionUI);
                    go.GetComponent<FinalDecisionScreenUI>().Show(_jobData);
                    break;
            }
        }
    }
}