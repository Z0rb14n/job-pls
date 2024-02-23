using UnityEngine;

namespace JobApplication
{
    public class JobApplicationPage : MonoBehaviour
    {
        [SerializeField] private GameObject jobAppButtonPrefab;
        [SerializeField] private RectTransform buttonsLocation;

        private void Awake()
        {
            JobApplicationManager manager = JobApplicationManager.Instance;
            foreach (JobApplicationData data in manager.jobs)
            {
                GameObject go = Instantiate(jobAppButtonPrefab, buttonsLocation);
                go.GetComponent<JobApplicationButton>().JobData = data;
            }
        }
    }
}