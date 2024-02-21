using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;

namespace Interview
{
    public class DialogueTriggerActions : MonoBehaviour
    {
        public DialogueAction[] actions;

        private Dictionary<string, UnityEvent<string>> _actionDict;

        private void OnValidate()
        {
            _actionDict = actions?.ToDictionary(action => action.id, action => action.onAction);
        }

        public void ExecuteAction(string id, string data)
        {
            if (_actionDict.TryGetValue(id, out UnityEvent<string> evt))
            {
                evt?.Invoke(data);
            }
            else
            {
                Debug.LogWarning($"Cannot find action with id {id}");
            }
        }
    }


    [Serializable]
    public class DialogueAction
    {
        public string id;
        
        public UnityEvent<string> onAction;
    }
}