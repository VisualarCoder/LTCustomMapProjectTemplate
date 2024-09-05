using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteAlways]
public class SpawnPointThing : MonoBehaviour
{
    GameObject _;
    GameObject _2;

    public void Update()
    {
        // griddy
        _2 = GameObject.Find("Terminal Spawn Point");
        _ = GameObject.Find("Player Spawn Point");
    }

    public void OnDrawGizmos()
    {
        Color color = Color.yellow;
        color.a = 0.5f;
        Gizmos.color = color;
        Gizmos.DrawSphere(_.transform.position, 0.10f);

        Color color2 = Color.cyan;
        color2.a = 0.5f;
        Gizmos.color = color2;
        Gizmos.DrawSphere(_2.transform.position, 0.10f);
    }
}
