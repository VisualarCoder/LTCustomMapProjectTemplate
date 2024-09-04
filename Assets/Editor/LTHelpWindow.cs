using UnityEditor;
using UnityEngine;

public class LTHelpWindow : EditorWindow
{
    private GUIStyle labelStyle;

    [MenuItem("Window/LT Help")]
    public static void Open()
    {
        LTHelpWindow window = EditorWindow.CreateInstance<LTHelpWindow>();
        window.name = "LT Help Window";
        window.titleContent = new GUIContent("LT Help Window");
        window.Show();
    }

    private void OnGUI()
    {
        if (labelStyle == null)
        {
            labelStyle = new GUIStyle(EditorStyles.label);
        }

        labelStyle.fontSize = Mathf.Clamp((int)(position.width / 30), 15, 15);
        labelStyle.wordWrap = true;
        labelStyle.alignment = TextAnchor.MiddleCenter;

        GUIStyle labelStyleTitle = new GUIStyle(EditorStyles.boldLabel);
        labelStyleTitle.alignment = TextAnchor.MiddleCenter;
        labelStyleTitle.fontSize = Mathf.Clamp((int)(position.width / 30), 25, 30);
        labelStyleTitle.wordWrap = true;

        GUILayout.Label("Welcome to the LT Help Window!", labelStyleTitle);

        if (GUILayout.Button("View Github Page!"))
        {
            Application.OpenURL("https://github.com/VisualarCoder/LTCustomMapProjectTemplate/blob/main/README.md");
            Debug.Log("Github Page Button Clicked!");
        }

        if (GUILayout.Button("Export Map!"))
        {
            CustomEditor.BuildAssetBundles();
        }


        GUILayout.Space(10);

        GUILayout.Label("Making your first map!", labelStyleTitle);
        GUILayout.Label("Well for first, You need to either build your map inside unity or inside blender or any other modeling programs.", labelStyle);
        GUILayout.Label("After that make sure to import it and put it inside the Game Object *Map Parent*, if you delete the Game Object *Map Parent* it will break your whole map so do not delete it!", labelStyle);
        GUILayout.Label("When your map is inside the Game Object *Map Parent* you can configure it in any way you want! by using some of the base template materials, models and textures you can shape your map how you want it to be!", labelStyle);

        GUILayout.Space(25);

        GUILayout.Label("Exporting your first map!", labelStyleTitle);
        GUILayout.Label("Once you have finished configuring and making your map, drag the Map Parent gameobject inside the Assets folder at the bottom of your screen (or wherever you have it docked).", labelStyle);
        GUILayout.Label("After that click your map prefab and look at the bottom of your prefabs inspector. You should see a label that says Asset Labels, click on it to view the Asset Bundles Screen.", labelStyle);
        GUILayout.Label("You should see Asset Bundles then a dropdown next to it on the right that says none. Click the dropdown then click new, Type whatever you want your custom map to be named then after naming it click your Custom Map name in the dropdown to select it.", labelStyle);
        GUILayout.Label("After all that make sure you have done all the steps correctly and look at the top of the LTHelp window and click Export Map! then you have completed your first map.", labelStyle);
        GUILayout.Label("Once all that is done select the file that is called what you selected your custom map name to be, that is your custom map file you can delete all the other files. Once this is done you can send it inside the #custom-maps channel and provide a map name, map description and map screenshot!", labelStyle);
        // Examples
        /*
        GUILayout.Label("This is where you can put various GUI elements:");
        GUILayout.TextField("Editable Text Field");
        GUILayout.Toggle(true, "Toggle Example");
        */
    }
}
