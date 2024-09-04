using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteAlways]
public class SpawnPointThing : MonoBehaviour
{
    GameObject _;

    public void Update()
    {
        if (_ ==  null)
        {
            _ = GameObject.Find("Spawn Point");
        }
    }

    public void OnDrawGizmos()
    {
        Color color = Color.yellow;
        color.a = 0.5f;
        Gizmos.color = color;
        Gizmos.DrawSphere(_.transform.position, 0.10f);
    }
}
