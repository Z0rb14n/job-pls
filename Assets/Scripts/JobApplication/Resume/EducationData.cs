namespace JobApplication.Resume
{
    /// <summary>
    /// Structure containing display ready education data.
    /// </summary>
    [System.Serializable]
    public struct EducationData
    {
        public string universityName;
        public string location;
        public string degree;
        public ResumeDateRange dates;
        public string[] notes;
    }
}