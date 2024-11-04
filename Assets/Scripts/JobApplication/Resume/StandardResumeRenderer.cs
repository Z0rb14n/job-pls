using TMPro;
using UnityEngine;
using UnityEngine.UI;
using Util;

namespace JobApplication.Resume
{
    /// <summary>
    /// Standard resume renderer of the normal resume format.
    /// </summary>
    public class StandardResumeRenderer : AbstractResumeRenderer
    {
        [SerializeField] private TextMeshProUGUI nameDisplay;
        [SerializeField] private TextMeshProUGUI subtitleDisplay;
        [SerializeField] private RectTransform educationRect;
        [SerializeField] private GameObject educationPrefab;
        [SerializeField] private RectTransform experienceRect;
        [SerializeField] private GameObject experiencePrefab;
        [SerializeField] private RectTransform skillsRect;
        [SerializeField] private GameObject skillPrefab;

        [SerializeField] private RectTransform thingToForceUpdate;

        /// <inheritdoc cref="AbstractResumeRenderer.Display"/>
        public override void Display(ResumeData resume)
        {
            nameDisplay.SetText(resume.writtenName);
            subtitleDisplay.SetText(resume.subtitle);
            ObjectUtil.EnsureLength(educationRect, resume.education.Length, educationPrefab);
            for (int i = 0; i < resume.education.Length; i++)
            {
                educationRect.GetChild(i).GetComponent<StandardEducationRenderer>().Display(resume.education[i]);
            }

            ObjectUtil.EnsureLength(experienceRect, resume.experience.Length, experiencePrefab);
            for (int i = 0; i < resume.education.Length; i++)
            {
                experienceRect.GetChild(i).GetComponent<StandardExperienceRenderer>().Display(resume.experience[i]);
            }

            ObjectUtil.EnsureLength(skillsRect, resume.skills.Length, skillPrefab);
            for (int i = 0; i < resume.skills.Length; i++)
            {
                skillsRect.GetChild(i).GetComponent<TextMeshProUGUI>().SetText(" - " + resume.skills[i]);
            }

            LayoutRebuilder.ForceRebuildLayoutImmediate(thingToForceUpdate); //wtf
        }
    }
}