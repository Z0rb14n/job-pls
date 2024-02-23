using UnityEngine;

namespace Cutscene
{
    [DisallowMultipleComponent]
    public class StartCutsceneActions : MonoBehaviour
    {
        [SerializeField] private Sprite seniorSprite;
        [SerializeField] private Sprite managerSprite;
        [SerializeField] private Sprite otherInternSprite;
        private CutsceneRunner _cutsceneRunner;

        private void Awake()
        {
            _cutsceneRunner = GetComponent<CutsceneRunner>();
        }

        public void ManagerLeave() => _cutsceneRunner.RemoveSprite(managerSprite);

        public void ManagerJoin() => _cutsceneRunner.AddSprite(managerSprite);

        public void OtherInternJoin() => _cutsceneRunner.AddSprite(otherInternSprite);

        public void OtherInternLeave() => _cutsceneRunner.RemoveSprite(otherInternSprite);

        public void SeniorLeave() => _cutsceneRunner.RemoveSprite(seniorSprite);
    }
}