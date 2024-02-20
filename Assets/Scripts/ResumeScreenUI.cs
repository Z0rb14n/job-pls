using JobApplication;
using TMPro;
using UnityEngine;

public class ResumeScreenUI : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI textField;
    
    private JobApplicationData _jobData;

    public void DisplayJobApplication(JobApplicationData data)
    {
        _jobData = data;
        if (_jobData) textField.text = _jobData.resume;
    }
    
    public void OnDiscard()
    {
        Debug.Log("get f--ked bozo");
        _jobData.state = JobApplicationState.Rejected;
        _jobData.SignalModified();
        Destroy(gameObject);
    }

    public void OnSendToNext()
    {
        Debug.Log("ok fine");
        _jobData.state = JobApplicationState.PreOA;
        _jobData.SignalModified();
        Destroy(gameObject);
    }
}