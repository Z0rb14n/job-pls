using System;
using System.Linq;
using UnityEngine;

namespace Cutscene
{
    [DisallowMultipleComponent]
    public class StartCutsceneActions : MonoBehaviour
    {
        [SerializeField] private Sprite seniorSprite;
        [SerializeField] private Sprite managerSprite;
        private CutsceneRunner _cutsceneRunner;
        private void Awake()
        {
            _cutsceneRunner = GetComponent<CutsceneRunner>();
        }

        public void ManagerLeave()
        {
            _cutsceneRunner.Screen.DisplayedPeople = _cutsceneRunner.Screen.DisplayedPeople
                .Where(sprite => sprite != managerSprite).ToArray();
        }

        public void ManagerJoin()
        {
            _cutsceneRunner.Screen.DisplayedPeople = _cutsceneRunner.Screen.DisplayedPeople
                .Append(managerSprite).ToArray();
        }

        public void SeniorLeave()
        {
            
            _cutsceneRunner.Screen.DisplayedPeople = _cutsceneRunner.Screen.DisplayedPeople
                .Where(sprite => sprite != seniorSprite).ToArray();
        }
    }
}