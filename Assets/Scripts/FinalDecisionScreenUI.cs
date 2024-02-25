using JobApplication;
using TMPro;
using UnityEngine;

public class FinalDecisionScreenUI : DecisionScreenUI
{
    [SerializeField] private TextMeshProUGUI textField;
    [SerializeField] private TextMeshProUGUI oaField;
    [SerializeField] private GameObject resumeScreenPrefab;

    public override void Show(JobApplicationData data)
    {
        base.Show(data);
        if (JobData)
        {
            textField.text = "Interviewer Notes: TODO";
            oaField.text = JobData.ApplicationState == JobApplicationState.Unscreened
                ? "OA Score: ???"
                : $"OA Score: {JobData.onlineAssessmentScore}";
        }
    }

    public void OnViewResume()
    {
        GameObject go = Instantiate(resumeScreenPrefab);
        go.GetComponent<ResumeScreenUI>().DisplayJobApplication(JobData, false);
    }

    public override void OnReject()
    {
        JobData.OnFinalReject();
        Destroy(gameObject);
    }

    public override void OnAccept()
    {
        JobData.OnFinalAccept();
        Destroy(gameObject);
    }
}