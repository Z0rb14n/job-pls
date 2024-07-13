using JobApplication;
using TMPro;
using UnityEngine;

public class DecisionScreenUI : MonoBehaviour
{
    [SerializeField] protected TextMeshProUGUI nameField;
    protected JobApplicationData JobData;

    public virtual void Show(JobApplicationData data)
    {
        JobData = data;
        if (JobData)
        {
            nameField.text = JobData.personName;
        }
    }

    public void OnClose()
    {
        Destroy(gameObject);
    }

    public virtual void OnReject()
    {
        JobData.OnPostInterviewReject();
        Destroy(gameObject);
    }

    public virtual void OnAccept()
    {
        JobData.OnPostInterviewProceed();
        Destroy(gameObject);
    }
}