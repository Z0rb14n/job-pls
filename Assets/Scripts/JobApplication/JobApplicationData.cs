using System;
using UnityEngine;

namespace JobApplication
{
    /// <summary>
    /// Data for an individual application.
    /// </summary>
    [CreateAssetMenu(fileName = "NewApplicationData", menuName = "Job Application")]
    public class JobApplicationData : ScriptableObject
    {
        public event Action OnModify;
        
        public string id;
        public string personName;
        [TextArea(minLines:3, maxLines:20)]
        public string resume;

        public JobApplicationState state;

        public void SignalModified() => OnModify?.Invoke();
    }
}
