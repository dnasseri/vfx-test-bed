#ifndef CUSTOM_LIGHTING_INCLUDED
#define CUSTOM_LIGHTING_INCLUDED

#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightDefinition.cs.hlsl"


void CalculateMainLight_float(float3 WorldPos, out float3 Direction, out float3 Color) {
#ifdef SHADERGRAPH_PREVIEW
	Direction = float3(0.5, 0.5, 0);
	Color = 1;
#else
	if (_DirectionalLightCount > 0)
	{
		DirectionalLightData light = _DirectionalLightDatas[0];
		Direction = -light.forward.xyz;
		Color = light.color;
	}
	else
	{
		Direction = float3(0.5, 0.5, 0);
		Color = 1;
	}
#endif
}

#endif //CUSTOM_LIGHTING_INCLUDED