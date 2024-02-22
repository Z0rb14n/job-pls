using System.Collections;
using TMPro;
using UnityEngine;

public class TimeDisplay : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI display;
    [SerializeField, Min(0)] private float timeBeforeUpdate = 1;
    [SerializeField, Range(0, 60)] private int minuteUpdate = 1;

    private IEnumerator _coroutine;

    private void Awake()
    {
        display.text = "9:00";
    }

    private void Start()
    {
        _coroutine = Increment();
        StartCoroutine(_coroutine);
    }

    private IEnumerator Increment()
    {
        int hour = 9;
        int minute = 0;
        while (_coroutine != null)
        {
            display.text = $"{(hour - 1) % 12 + 1}:{minute:D2}";
            yield return new WaitForSeconds(timeBeforeUpdate);
            minute += minuteUpdate;
            if (minute >= 60)
            {
                minute -= 60;
                hour++;
            }
        }
    }

    public void ResetTime()
    {
        StopCoroutine(_coroutine);
        _coroutine = Increment();
        StartCoroutine(_coroutine);
    }
}