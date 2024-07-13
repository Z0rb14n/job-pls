namespace JobApplication
{
    public enum JobApplicationState
    {
        Unscreened,
        PreOA,
        PostOA,
        PreOtherInterviewer,
        NeedInterview,
        PostInterview,
        NeedDecision,
        Rejected,
        Accepted
    }
}