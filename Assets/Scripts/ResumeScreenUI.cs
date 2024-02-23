using JobApplication;
using TMPro;
using UnityEngine;

public class ResumeScreenUI : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI textField;
    [SerializeField] private TextMeshProUGUI nameField;
    [SerializeField] private TextMeshProUGUI oaField;

    private JobApplicationData _jobData;

    public void DisplayJobApplication(JobApplicationData data)
    {
        _jobData = data;
        if (_jobData)
        {
            nameField.text = _jobData.personName;
            textField.text = _jobData.resume;
            oaField.text = _jobData.ApplicationState != JobApplicationState.PostOA
                ? "OA Score: ???"
                : $"OA Score: {_jobData.onlineAssessmentScore}";
        }
    }

    public void OnDiscard()
    {
        Debug.Log("get f--ked bozo");
        _jobData.ApplicationState = JobApplicationState.Rejected;
        _jobData.SignalModified();
        Destroy(gameObject);
    }

    public void OnSendToNext()
    {
        Debug.Log("ok fine");
        if (_jobData.ApplicationState == JobApplicationState.Unscreened)
            _jobData.ApplicationState = JobApplicationState.PreOA;
        else _jobData.ApplicationState = JobApplicationState.NeedInterview;
        _jobData.DaysBeforeNextStage = Random.Range(0, 3);
        _jobData.SignalModified();
        Destroy(gameObject);
    }
}