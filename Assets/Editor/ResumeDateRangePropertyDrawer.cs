using JobApplication.Resume;
using UnityEditor;
using UnityEngine;

namespace CEditor
{
    [CustomPropertyDrawer(typeof(ResumeDateRange))]
    public class ResumeDateRangePropertyDrawer : PropertyDrawer
    {
        public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
        {
            label = EditorGUI.BeginProperty(position, label, property);
            SerializedProperty valuesIterator = property.FindPropertyRelative(nameof(ResumeDateRange.startDate));
            EditorGUI.MultiPropertyField(position, new GUIContent[]{ new("Start"), new("End") }, valuesIterator, label);
            EditorGUI.EndProperty();
        }
    }
}