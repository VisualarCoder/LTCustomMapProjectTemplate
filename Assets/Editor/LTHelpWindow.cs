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
        GUILayout.Label("Also make sure to configure the spawn point gameobjects position inside the inspector to make sure the player spawns at the right position! this is the same with the terminal spawn position :D.", labelStyle);

        GUILayout.Space(25);

        GUILayout.Label("Exporting your first map!", labelStyleTitle);
        GUILayout.Label("Once you have finished configuring and making your map, drag the Map Parent gameobject inside the Assets folder at the bottom of your screen (or wherever you have it docked).", labelStyle);
        GUILayout.Label("After that click your map prefab and look at the bottom of your prefabs inspector. You should see a label that says Asset Labels, click on it to view the Asset Bundles Screen.", labelStyle);
        GUILayout.Label("You should see Asset Bundles then a dropdown next to it on the right that says none. Click the dropdown then click new, Type whatever you want your custom map to be named then after naming it click your Custom Map name in the dropdown to select it.", labelStyle);
        GUILayout.Label("After all that make sure you have done all the steps correctly and look at the top of the LTHelp window and click Export Map! then you have completed your first map.", labelStyle);
        GUILayout.Label("Once all that is done select the file that is called what you selected your custom map name to be, that is your custom map file you can delete all the other files. Once this is done you can send it inside the #custom-maps channel and provide a map name, map description and map screenshot!", labelStyle);

        GUILayout.Space(25);

        GUILayout.Label("Making your first interactable!", labelStyleTitle);
        GUILayout.Label("Soo your wondering how to make your own interactable? so first import your object / model you want to become a interactable.", labelStyle);
        GUILayout.Label("Next select your interactable in the Hierarchy and look under the objects name and click the dropdown next to where it says tag. Once you have clicked it select the tag that says LTInteractable!", labelStyle);
        GUILayout.Label("Next once you have setup the tag onto your interactable, if your object hasn't already got a collider add one by clicking add component in the inspector while selecting your object and typing collider. If its a custom model add a mesh collider, otherwise add the collider that fits your interactable.", labelStyle);
        GUILayout.Label("After adding your collider if your using a mesh collider, find the component and make sure convex and is trigger is toggled to true. If your using a box collider, sphere collider, etc. Just tick the is trigger option!", labelStyle);
        GUILayout.Label("Once you have followed all those steps your interactable should be set up! Latest Taggers will handle all the rest of the interactable code :D", labelStyle);

        GUILayout.Space(25);

        GUILayout.Label("Making your first climbable object!", labelStyleTitle);
        GUILayout.Label("Well, for first you need to either create a cube or whatever you want to be climbable!", labelStyle);
        GUILayout.Label("Next select your climbable in the Hierarchy and look under the objects name and click the dropdown next to where it says tag. Once you have clicked it select the tag that says LTClimbable!", labelStyle);
        GUILayout.Label("Next once you have setup the tag onto your climbable, if your object hasn't already got a collider add one by clicking add component in the inspector while selecting your object and typing collider. If its a custom model add a mesh collider, otherwise add the collider that fits your climbable.", labelStyle);
        GUILayout.Label("After adding your collider if your using a mesh collider, find the component and make sure convex and is trigger is toggled to true. If your using a box collider, sphere collider, etc. Just tick the is trigger option!", labelStyle);
        GUILayout.Label("Once you have followed all those steps your climbable should be set up! Latest Taggers will handle all the rest of the climbable code :D", labelStyle);
    }
}
