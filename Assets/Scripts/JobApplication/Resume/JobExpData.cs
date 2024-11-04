namespace JobApplication.Resume
{
    /// <summary>
    /// Structure containing display ready data for the experience of a resume.
    /// </summary>
    [System.Serializable]
    public struct JobExpData
    {
        public string companyName;
        public string location;
        public string title;
        public ResumeDateRange dates;
        public string[] bulletPoints;
    }
}