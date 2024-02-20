﻿using System.Collections.Generic;
using Ink;
using Ink.Runtime;
using UnityEngine;

namespace Interview
{
    /// <summary>
    /// Stores the raw Ink content of the branching story.
    /// </summary>
    public class BranchingStory
    {
        /// <summary>
        /// Ink story object wrapped by this class.
        /// </summary>
        private Story _story;

        /// <summary>
        /// Current line in the ink story.
        /// Use <see cref="DialogueUtils.ExtractSpokenLine"/> or your own function to process it.
        /// </summary>
        public string CurrentLine { get; private set; }

        /// <summary>
        /// List of choices at the current point in the story.
        /// </summary>
        public List<Choice> CurrentChoices => _story.currentChoices;

        /// <summary>
        /// Tags attached to the current line in the story.
        /// </summary>
        public Dictionary<string, string> CurrentTags { get; private set; }

        public bool CanContinue => _story.canContinue;

        public void Initialize(TextAsset jsonAsset)
        {
            _story = new Story(jsonAsset.text);
            _story.onError += (msg, type) =>
            {
                if (type == ErrorType.Warning)
                    Debug.LogWarning(msg);
                else
                    Debug.LogError(msg);
            };
        }

        /// <summary>
        /// Continues to the next line if it exists, updating all story information.
        /// </summary>
        /// <returns>True if it could continue, false otherwise.</returns>
        public bool Continue()
        {
            if (!_story.canContinue) return false;
            UpdateCurrentLine(_story.Continue());
            UpdateCurrentTags();

            return true;
        }

        /// <summary>
        /// Continues through all lines at once until there is no next line.
        /// This is usually because the story has reached a choice; however, it could also mean a "dead end" or that the Ink story has finished.
        /// </summary>
        public void ContinueUntilChoice()
        {
            UpdateCurrentLine(_story.ContinueMaximally());
            UpdateCurrentTags();
        }

        /// <summary>
        /// Chooses the choice at the given index.
        /// Does not load any text following the choice; to do so, call <see cref="Continue"/>
        /// </summary>
        /// <param name="choiceIndex">Zero-based index of the choice (0 &lt;= choiceIndex &lt; current number of choices).</param>
        public void MakeChoice(int choiceIndex)
        {
            if (choiceIndex < _story.currentChoices.Count || choiceIndex < 0)
            {
                _story.ChooseChoiceIndex(choiceIndex);
            }
        }

        /// <summary>
        /// Jumps to the knot or stitch with the provided Ink address. 
        /// </summary>
        /// <param name="inkAddress">An Ink address: e.g. "knot_name", "knot_name.stitch_name"</param>
        public void JumpToAddress(string inkAddress)
        {
            _story.ChoosePathString(inkAddress);
        }

        private void UpdateCurrentLine(string line)
        {
            CurrentLine = line;
        }

        private void UpdateCurrentTags()
        {
            CurrentTags = new Dictionary<string, string>();

            foreach (string tag in _story.currentTags)
            {
                DialogueUtils.ExtractTag(tag, out string key, out string content);
                CurrentTags.Add(key, content);
            }
        }

        /// <summary>
        /// Sets the value of the given story variable.
        /// </summary>
        /// <param name="varName">Name of story variable to set value of.</param>
        /// <param name="newValue">New value for the story variable.</param>
        public void SetStoryVariable(string varName, bool newValue)
        {
            _story.variablesState[varName] = newValue;
        }

        /// <summary>
        /// Sets the value of the given story variable.
        /// </summary>
        /// <param name="varName">Name of story variable to set value of.</param>
        /// <param name="newValue">New value for the story variable.</param>
        public void SetStoryVariable(string varName, int newValue)
        {
            _story.variablesState[varName] = newValue;
        }

        /// <summary>
        /// Sets the value of the given story variable.
        /// </summary>
        /// <param name="varName">Name of story variable to set value of.</param>
        /// <param name="newValue">New value for the story variable.</param>
        public void SetStoryVariable(string varName, string newValue)
        {
            _story.variablesState[varName] = newValue;
        }

        /// <summary>
        /// Gets the value of the given story variable.
        /// </summary>
        /// <param name="varName">Name of the variable we are looking for.</param>
        /// <returns>The value.</returns>
        public object GetVariableValue(string varName)
        {
            return _story.variablesState[varName];
        }
    }
}