using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisplacementControl : MonoBehaviour
{
    public float displacementAmount;
    MeshRenderer meshRenderer;

    void Start()
    {
        meshRenderer = GetComponent<MeshRenderer>();
        
    }

    void Update()
    {
        displacementAmount = Mathf.Lerp(displacementAmount, 0, Time.deltaTime);
        meshRenderer.material.SetFloat("_Amount", displacementAmount);

        if (Input.GetButtonDown("Jump"))
        {
            Debug.Log("space");
            displacementAmount += 1f;
        }
        
    }
}
