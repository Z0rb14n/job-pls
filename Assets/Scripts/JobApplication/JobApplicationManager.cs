using UnityEngine;

namespace JobApplication
{
    public class JobApplicationManager : MonoBehaviour
    {
        private static JobApplicationManager _instance;

        public JobApplicationData[] jobs;
        [SerializeField] private TimeDisplay timeDisplay;

        public static JobApplicationManager Instance
        {
            get
            {
                if (_instance == null) _instance = FindObjectOfType<JobApplicationManager>(true);
                return _instance;
            }
        }

        private void Awake()
        {
            _instance = this;
        }

        public void OnNextDay()
        {
            timeDisplay.ResetTime();
            foreach (JobApplicationData data in jobs)
            {
                if (data.ApplicationState == JobApplicationState.PreOA)
                {
                    data.DaysBeforeNextStage--;
                    if (data.DaysBeforeNextStage <= 0)
                    {
                        data.ApplicationState = JobApplicationState.PostOA;
                        data.SignalModified();
                    }
                }
            }
        }
    }
}