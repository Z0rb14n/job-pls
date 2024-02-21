using UnityEngine;
using UnityEngine.SceneManagement;

[DisallowMultipleComponent]
public class TitleBehaviour : MonoBehaviour
{
    public void OnStartClicked()
    {
        SceneManager.LoadScene("Scenes/MainScene");
    }
}