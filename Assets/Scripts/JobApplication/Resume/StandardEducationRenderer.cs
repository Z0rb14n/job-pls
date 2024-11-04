using TMPro;
using UnityEngine;
using Util;

namespace JobApplication.Resume
{
    /// <summary>
    /// Standard renderer for Education sections.
    /// </summary>
    public class StandardEducationRenderer : MonoBehaviour
    {
        [SerializeField]
        private TextMeshProUGUI uniName;
        
        [SerializeField]
        private TextMeshProUGUI uniLoc;
        
        [SerializeField]
        private TextMeshProUGUI degreeDesc;
        
        [SerializeField]
        private TextMeshProUGUI dateLoc;

        [SerializeField] private RectTransform notesLoc;

        [SerializeField] private GameObject pointFormPrefab;

        /// <summary>
        /// Displays the education data.
        /// </summary>
        /// <param name="educationData">Education data.</param>
        public void Display(EducationData educationData)
        {
            uniName.SetText(educationData.universityName);
            uniLoc.SetText(educationData.location);
            degreeDesc.SetText(educationData.degree);
            dateLoc.SetText(educationData.startDate + "-" + educationData.endDate);
            ObjectUtil.EnsureLength(notesLoc, educationData.notes.Length, pointFormPrefab);
            for (int i = 0; i < educationData.notes.Length; i++)
            {
                notesLoc.GetChild(i).GetComponent<TextMeshProUGUI>().SetText(" - " + educationData.notes[i]);
            }
        }
    }
}