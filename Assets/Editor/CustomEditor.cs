using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public class CustomEditor
{
    [MenuItem("LatestTaggers/Export Custom Map")]
    public static void BuildAssetBundles()
    {
        string assetBundleDirectory = "Assets/AssetBundles";
        if (!System.IO.Directory.Exists(assetBundleDirectory))
        {
            System.IO.Directory.CreateDirectory(assetBundleDirectory);
        }

        EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene());
        BuildPipeline.BuildAssetBundles(assetBundleDirectory, BuildAssetBundleOptions.None, BuildTarget.StandaloneWindows);
    }

    [MenuItem("LatestTaggers/Sub Directories/Join Discord")]
    static void JoinDiscord()
    {
        Application.OpenURL("https://discord.gg/latesttaggers");
    }


    [MenuItem("LatestTaggers/Help")]
    static void Help()
    {
        LTHelpWindow.Open();
        //Application.OpenURL("https://github.com/VisualarCoder/LTCustomMapProjectTemplate/blob/main/README.md");
    }

    [MenuItem("LatestTaggers/Sub Directories/Locate Spawn Point")]
    static void Locate()
    {
        Selection.activeGameObject = GameObject.Find("Player Spawn Point");
    }

    [MenuItem("LatestTaggers/Sub Directories/Locate Terminal Spawn Point")]
    static void Locate2()
    {
        Selection.activeGameObject = GameObject.Find("Terminal Spawn Point");
    }
}
