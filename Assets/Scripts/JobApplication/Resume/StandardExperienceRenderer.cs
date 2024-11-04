using TMPro;
using UnityEngine;
using Util;

namespace JobApplication.Resume
{
    /// <summary>
    /// Standard renderer for experience sections.
    /// </summary>
    public class StandardExperienceRenderer : MonoBehaviour
    {
        [SerializeField]
        private TextMeshProUGUI companyName;
        
        [SerializeField]
        private TextMeshProUGUI companyLocation;
        
        [SerializeField]
        private TextMeshProUGUI jobTitle;
        
        [SerializeField]
        private TextMeshProUGUI date;

        [SerializeField] private RectTransform notesLoc;

        [SerializeField] private GameObject pointFormPrefab;

        /// <summary>
        /// Displays the job experience data.
        /// </summary>
        /// <param name="jobExpData">Job experience data.</param>
        public void Display(JobExpData jobExpData)
        {
            companyName.SetText(jobExpData.companyName);
            companyLocation.SetText(jobExpData.location);
            jobTitle.SetText(jobExpData.title);
            date.SetText(jobExpData.dates.ToString());
            ObjectUtil.EnsureLength(notesLoc, jobExpData.bulletPoints.Length, pointFormPrefab);
            for (int i = 0; i < jobExpData.bulletPoints.Length; i++)
            {
                notesLoc.GetChild(i).GetComponent<TextMeshProUGUI>().SetText(" - " + jobExpData.bulletPoints[i]);
            }
        }
    }
}