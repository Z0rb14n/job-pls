using UnityEngine;

namespace JobApplication.Resume
{
    /// <summary>
    /// Abstract resume renderer to display resumes.
    /// </summary>
    public abstract class AbstractResumeRenderer : MonoBehaviour
    {
        /// <summary>
        /// Displays the resume.
        /// </summary>
        /// <param name="resume">Resume data.</param>
        public abstract void Display(ResumeData resume);
    }
}