namespace JobApplication.Resume
{
    /// <summary>
    /// Simple date range from start - end.
    /// </summary>
    [System.Serializable]
    public struct ResumeDateRange
    {
        public string startDate;
        public string endDate;

        public override string ToString()
        {
            return startDate + " - " + endDate;
        }
    }
}