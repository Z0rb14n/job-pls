using JobApplication;
using TMPro;
using UnityEngine;

public class FinalDecisionScreenUI : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI nameField;
    [SerializeField] private TextMeshProUGUI textField;
    [SerializeField] private TextMeshProUGUI oaField;
    [SerializeField] private GameObject resumeScreenPrefab;

    private JobApplicationData _jobData;

    public void Show(JobApplicationData data)
    {
        _jobData = data;
        if (_jobData)
        {
            nameField.text = _jobData.personName;
            textField.text = "Interviewer Notes: TODO";
            oaField.text = _jobData.ApplicationState == JobApplicationState.Unscreened
                ? "OA Score: ???"
                : $"OA Score: {_jobData.onlineAssessmentScore}";
        }
    }

    public void OnViewResume()
    {
        GameObject go = Instantiate(resumeScreenPrefab);
        go.GetComponent<ResumeScreenUI>().DisplayJobApplication(_jobData, false);
    }

    public void OnClose()
    {
        Destroy(gameObject);
    }

    public void OnReject()
    {
        _jobData.OnFinalReject();
        Destroy(gameObject);
    }

    public void OnAccept()
    {
        _jobData.OnFinalAccept();
        Destroy(gameObject);
    }
}