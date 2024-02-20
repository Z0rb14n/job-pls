using System;
using TMPro;
using UnityEngine;

namespace JobApplication
{
    public class JobApplicationButton : MonoBehaviour
    {
        public JobApplicationData jobData;

        [SerializeField] private TextMeshProUGUI displayedText;
        [SerializeField] private GameObject resumeScreenUI;

        private void Awake()
        {
            jobData.OnModify += JobDataOnOnModify;
            JobDataOnOnModify();
        }

        private void JobDataOnOnModify()
        {
            displayedText.text = $"[{Enum.GetName(typeof(JobApplicationState), jobData.state)}] {jobData.personName}";
        }

        public void OnButtonPressed()
        {
            GameObject go = Instantiate(resumeScreenUI);
            go.GetComponent<ResumeScreenUI>().DisplayJobApplication(jobData);
        }
    }
}