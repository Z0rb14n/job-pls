namespace JobApplication.Resume
{
    /// <summary>
    /// Resume renderer that does nothing, as the template should contain everything.
    /// </summary>
    public class NoopResumeRenderer : AbstractResumeRenderer
    {
        public override void Display(ResumeData resume)
        {
        }
    }
}