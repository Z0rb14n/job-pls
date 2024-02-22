using UnityEngine;

namespace JobApplication
{
    public class JobApplicationManager : MonoBehaviour
    {
        private static JobApplicationManager _instance;

        public JobApplicationData[] jobs;

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
    }
}