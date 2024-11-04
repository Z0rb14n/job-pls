using JobApplication;
using JobApplication.Resume;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using Util;

public class ResumeScreenUI : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI nameField;
    [SerializeField] private TextMeshProUGUI oaField;
    [SerializeField] private Button[] buttons;
    [SerializeField] private RectTransform placeForResumes;

    private JobApplicationData _jobData;

    public void DisplayJobApplication(JobApplicationData data, bool showButtons = true)
    {
        _jobData = data;
        if (_jobData)
        {
            nameField.text = _jobData.personName;
            ObjectUtil.EnsureLength(placeForResumes, 0, data.resume.template);
            GameObject go = Instantiate(data.resume.template, placeForResumes);
            go.GetComponent<AbstractResumeRenderer>().Display(data.resume);
            oaField.text = _jobData.ApplicationState == JobApplicationState.Unscreened
                ? "OA Score: ???"
                : $"OA Score: {_jobData.onlineAssessmentScore}";
        }

        if (!showButtons)
        {
            foreach (Button b in buttons)
            {
                b.gameObject.SetActive(false);
            }
        }
    }

    public void OnClose()
    {
        Destroy(gameObject);
    }

    public void OnDiscard()
    {
        Debug.Log("get f--ked bozo");
        _jobData.OnResumeScreenDiscard();
        Destroy(gameObject);
    }

    public void OnSendToNext()
    {
        Debug.Log("ok fine");
        _jobData.OnResumeScreenSendNext();
        Destroy(gameObject);
    }
}