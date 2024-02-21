using System;
using Interview;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace JobApplication
{
    public class JobApplicationButton : MonoBehaviour
    {
        public JobApplicationData jobData;

        [SerializeField] private TextMeshProUGUI displayedText;
        [SerializeField] private Button button;
        [SerializeField] private TextMeshProUGUI buttonText;
        [SerializeField] private GameObject resumeScreenUI;
        [SerializeField] private GameObject interviewUI;

        private void Awake()
        {
            jobData.ApplicationState = jobData.testStartState; // for testing purposes REMOVE LATER
            
            jobData.OnModify += JobDataOnOnModify;
            JobDataOnOnModify();
        }

        private void JobDataOnOnModify()
        {
            displayedText.text = $"[{Enum.GetName(typeof(JobApplicationState), jobData.ApplicationState)}] {jobData.personName}";
            switch (jobData.ApplicationState)
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
            button.interactable = jobData.ApplicationState is not (JobApplicationState.Rejected or JobApplicationState.PreOA);
        }

        public void OnButtonPressed()
        {
            switch (jobData.ApplicationState)
            {
                case JobApplicationState.Unscreened:
                    GameObject go = Instantiate(resumeScreenUI);
                    go.GetComponent<ResumeScreenUI>().DisplayJobApplication(jobData);
                    break;
                case JobApplicationState.NeedInterview:
                    go = Instantiate(interviewUI);
                    go.GetComponent<InterviewScreen>().Show(jobData);
                    break;
            }
        }
    }
}