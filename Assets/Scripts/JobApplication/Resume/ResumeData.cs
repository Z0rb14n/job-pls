using UnityEngine;

namespace JobApplication.Resume
{
    /// <summary>
    /// Data for an individual application's Resume.
    /// </summary>
    [CreateAssetMenu(fileName = "NewResumeData", menuName = "JobApp/Resume")]
    public class ResumeData : ScriptableObject
    {
        public string writtenName;
        public string subtitle;
        [TextArea(3, 10)]
        public string description;
        public JobExpData[] experience;
        public EducationData[] education;
        public string[] skills;
        public GameObject template;
    }
}