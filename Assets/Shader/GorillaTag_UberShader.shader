Shader "GorillaTag/UberShader" {
    Properties{
        [Enum(GTShaderTransparencyMode)] _TransparencyMode("Transparency Mode", Int) = 0
        _Cutoff("Alpha Cutoff", Range(0, 1)) = 0.5
        [Space]
        [Enum(GTShaderColorSource)] _ColorSource("Color Source", Int) = 0
        _BaseColor("Base Color", Color) = (1,1,1,1)
        _GChannelColor("G Channel Color", Color) = (1,1,1,1)
        _BChannelColor("B Channel Color", Color) = (1,1,1,1)
        _AChannelColor("A Channel Color", Color) = (1,1,1,1)
        _BaseMap("Base Map", 2D) = "white" {}
        [Enum(GTShaderUVSource)] _UVSource("UV Source", Int) = 0
        [Space]
        [Toggle(_MAINTEX_ROTATE)] _DoTextureRotation("Rotate Base Texture", Float) = 0
        _RotateAngle("Degrees", Float) = 0
        [Toggle] _RotateAnim("Animate", Float) = 0
        [Space]
        [Toggle(_UV_WAVE_WARP)] _UseWaveWarp("Wave Warp UVs", Float) = 0
        _WaveAmplitude("Wave Amplitude", Float) = 0.02
        _WaveFrequency("Wave Frequency", Float) = 1
        _WaveScale("Wave Scale", Float) = 12
        _WaveTimeScale("Wave Timescale", Float) = 1
        [Toggle(_USE_WEATHER_MAP)] _UseWeatherMap("Use Weather Map", Float) = 0
        [NoScaleOffset] _WeatherMap("Weather Map", 2D) = "grey" {}
        _WeatherMapDissolveEdgeSize("Weather Dissolve Edge Size", Range(0.0001, 1)) = 0.1
        [Space]
        [Toggle(_REFLECTIONS)] _ReflectToggle("Reflections", Float) = 0
        [Toggle(_REFLECTIONS_BOX_PROJECT)] _ReflectBoxProjectToggle("Box Projection", Float) = 0
        [Vec3] _ReflectBoxCubePos("Box Project Cube Origin", Vector) = (0,0,0,1)
        [Vec3] _ReflectBoxSize("Box Size", Vector) = (1,1,1,1)
        [Vec3][HideInInspector] _ReflectBoxRotation("Box Rotation", Vector) = (0,0,0,1)
        [Toggle(_REFLECTIONS_MATCAP)] _ReflectMatcapToggle("Matcap", Float) = 0
        [Toggle(_REFLECTIONS_MATCAP_PERSP_AWARE)] _ReflectMatcapPerspToggle("Matcap - View Align", Float) = 1
        [Toggle(_REFLECTIONS_USE_NORMAL_TEX)] _ReflectNormalToggle("Use Normal Map", Float) = 0
        [NoScaleOffset] _ReflectTex("Reflection Map", 2D) = "gray" {}
        [NoScaleOffset] _ReflectNormalTex("Normal Map", 2D) = "black" {}
        [Toggle(_REFLECTIONS_ALBEDO_TINT)] _ReflectAlbedoTint("Tint by Albedo", Float) = 0
        _ReflectTint("Tint", Vector) = (1,1,1,1)
        _ReflectOpacity("Opacity", Range(0, 1)) = 1
        _ReflectExposure("Exposure", Range(1, 16)) = 1
        [Vec3] _ReflectOffset("Shift", Vector) = (0,0,0,0)
        [Vec2] _ReflectScale("Scale", Vector) = (1,1,1,1)
        _ReflectRotate("Rotation", Range(0, 360)) = 0
        [Space]
        [Toggle(_PARALLAX)] _ParallaxToggle("Parallax Occlusion Mapping", Float) = 0
        [NoScaleOffset] _DepthMap("Parallax Depth Map", 2D) = "gray" {}
        _ParallaxAmplitude("Parallax Strength", Float) = 8.16
        [Space]
        [Toggle(_UV_SHIFT)] _UvShiftToggle("UV Shift", Float) = 0
        _UvShiftSteps("Steps", Int) = 0.0000000000000000000000000000000000000000001
        _UvShiftRate("Rate", Range(1, 16)) = 1
        _UvShiftOffset("Offset", Int) = 0
        [Space]
        [Toggle(_CRYSTAL_EFFECT)] _UseCrystalEffect("Crystal Effect", Float) = 0
        _CrystalPower("Crystal Power", Float) = 0.32
        _CrystalRimColor("Crystal Rim Color", Color) = (0.382,0.382,0.382,1)
        [Space]
        [Toggle(_LIQUID_VOLUME)] _LiquidVolume("Liquid Volume", Float) = 0
        _LiquidFill("Fill Amount", Range(-2, 2)) = 0.86
        _LiquidFillNormal("Fill Normal", Vector) = (0,1,0,1)
        _LiquidSurfaceColor("Surface Color", Color) = (0.65,0.25,0.45,1)
        _LiquidSwayX("Sway X", Range(-1, 1)) = 0
        _LiquidSwayY("Sway Y", Range(-1, 1)) = 0
        [Space]
        [Toggle(_LIQUID_CONTAINER)] _LiquidContainer("Liquid Container (Legacy)", Float) = 0
        _LiquidPlanePosition("Plane Position", Vector) = (0,0,0,1)
        _LiquidPlaneNormal("Plane Normal", Vector) = (0,-1,0,1)
        [Space]
        [Toggle(_VERTEX_ANIM_FLAP)] _VertexFlapToggle("Vertex Flap Animation", Float) = 0
        [Vec3] _VertexFlapAxis("Flap Axis (Local Space)", Vector) = (0,1,0,1)
        [Vec2] _VertexFlapDegreesMinMax("Flap Degrees Min Max", Vector) = (-20,60,1,1)
        _VertexFlapSpeed("Flap Speed", Float) = 1
        _VertexFlapPhaseOffset("Flap Phase Offset", Float) = 0
        [Space]
        [Toggle(_VERTEX_ANIM_WAVE)] _VertexWaveToggle("Vertex Wave Animation", Float) = 0
        [Vec4] _VertexWaveParams("Wave Parameters", Vector) = (0.5,0.2,0.2,0.8)
        _VertexWaveStartOffset("Wave Start Offset", Float) = 0
        _VertexWavePhaseOffset("Wave Phase Offset", Float) = 0
        [Space]
        [Toggle(_VERTEX_ROTATE)] _VertexRotateToggle("Vertex Rotation", Float) = 0
        [EulerAngles] _VertexRotateAngles("Vertex Rotation Amount", Vector) = (0,0,0,1)
        [Space]
        [Toggle(_EYECOMP)] _UseEyeTracking("Use Eye Tracking", Float) = 0
        _EyeTileOffsetUV("EyeTilingOffset", Vector) = (1,1,0,0)
        [HideInInspector] _EyeOverrideUV("Override UV", Float) = 0
        [HideInInspector] _EyeOverrideUVTransform("Override UV Transform", Vector) = (1,1,0,0)
        [Space]
        [Toggle(_MOUTHCOMP)] _UseMouthFlap("Use Mouth Flap", Float) = 0
        _MouthMap("Mouth Texture", 2D) = "white" {}
        [NoScaleOffset] _MouthMap_Atlas("Mouth Flap - Atlas", 2DArray) = "" {}
        _MouthMap_AtlasSlice("Mouth Flap - Atlas Slice", Float) = 0
        [Space]
        [Toggle(_USE_VERTEX_COLOR)] _UseVertexColor("Use Vertex Color", Float) = 0
        [Toggle(_WATER_EFFECT)] _WaterEffect("Water Effect", Float) = 0
        [Toggle(_HEIGHT_BASED_WATER_EFFECT)] _HeightBasedWaterEffect("Partial Water Effect", Float) = 0
        [Space]
        [Toggle(_USE_DAY_NIGHT_LIGHTMAP)] _UseDayNightLightmap("Use Day/Night Lightmap", Float) = 0
        [Toggle(_GT_SPECULAR)] _UseSpecular("Add Specular Lighting", Float) = 0
        [Toggle(_GT_SPECULAR_FLAT)] _UseSpecularFlat("Faceted Specular", Float) = 0
        [Space]
        _Smoothness("Smoothness", Range(0, 1)) = 0
        [Space]
        [Toggle(_EMISSION)] _EmissionToggle("Emission", Float) = 0
        [HDR] _EmissionColor("Emission Color", Color) = (0,0,0,0)
        [NoScaleOffset] _EmissionMap("Emission Map", 2D) = "white" {}
        _EmissionMaskByBaseMapAlpha("Emission - Mask Influence By Base Map Alpha", Range(0, 1)) = 1
        [Vec3] _EmissionUVScrollSpeed("Emission - UV Scroll Speed & Scale", Vector) = (0,0,1,-0)
        _EmissionDissolveProgress("Emission - Dissolve Progress", Range(0, 1)) = 1
        _EmissionDissolveEdgeSize("Emission - Dissolve Edge Size", Range(0.0001, 1)) = 0.1
        [Toggle(_EMISSION_USE_UV_WAVE_WARP)] _EmissionUseUVWaveWarp("Emission - Use UV Wave Warp", Float) = 0
        [Space]
        [Enum(UnityEngine.Rendering.CullMode)] _Cull("Cull", Float) = 2
        [IntRange] _StencilReference("Stencil Reference", Range(0, 255)) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _StencilComparison("Stencil Comparison", Float) = 0
        [Enum(UnityEngine.Rendering.StencilOp)] _StencilPassFront("Stencil Pass Front", Float) = 0
        [Toggle(_USE_DEFORM_MAP)] _USE_DEFORM_MAP("Use Deform Map", Float) = 0
        [NoScaleOffset] _DeformMap("Deform Map", 2D) = "gray" {}
        _DeformMapIntensity("Deform Map Intensity", Float) = 1
        _DeformMapMaskByVertColorRAmount("Deform Map Mask By Vertex Color R Amount", Float) = 1
        [Vec2] _DeformMapScrollSpeed("Deform Map Scroll Speed", Vector) = (1,1,-0,-0)
        [Vec2] _DeformMapUV0Influence("Deform Map UV0 Influence", Vector) = (1,1,-0,-0)
        [Vec3] _DeformMapObjectSpaceOffsetsU("Deform Map Object Space Offsets U", Vector) = (0,0,0,-0)
        [Vec3] _DeformMapObjectSpaceOffsetsV("Deform Map Object Space Offsets V", Vector) = (0,0,0,-0)
        [Vec3] _DeformMapWorldSpaceOffsetsU("Deform Map World Space Offsets U", Vector) = (0,0,0,-0)
        [Vec3] _DeformMapWorldSpaceOffsetsV("Deform Map World Space Offsets V", Vector) = (0,0,0,-0)
        _RotateOnYAxisBySinTime("Rotate By Sine of Time (t/8, t/4, t/2, t)", Vector) = (0,0,0,0)
        [Toggle(_USE_TEX_ARRAY_ATLAS)] _USE_TEX_ARRAY_ATLAS("Debug/Use Tex Array Atlas", Float) = 0
        [NoScaleOffset] _BaseMap_Atlas("Debug/Base Map - Atlas", 2DArray) = "" {}
        _BaseMap_AtlasSlice("Debug/Base Map - Atlas Slice", Float) = 0
        [NoScaleOffset] _EmissionMap_Atlas("Debug/Emission Map - Atlas", 2DArray) = "" {}
        _EmissionMap_AtlasSlice("Debug/Emission Map - Atlas Slice", Float) = 0
        [NoScaleOffset] _DeformMap_Atlas("Debug/Deform Map - Atlas", 2DArray) = "" {}
        _DeformMap_AtlasSlice("Debug/Deform Map - Atlas Slice", Float) = 0
        [HideInInspector] _SrcBlend("__src", Float) = 1
        [HideInInspector] _DstBlend("__dst", Float) = 0
        [HideInInspector] _SrcBlendAlpha("__srcA", Float) = 1
        [HideInInspector] _DstBlendAlpha("__dstA", Float) = 0
        [HideInInspector] _ZWrite("__zw", Float) = 1
        [HideInInspector] _AlphaToMask("__alphaToMask", Float) = 0
        [HideInInspector] _Color("Legacy Color", Color) = (1,1,1,1)
        [HideInInspector] _Surface("__surface", Float) = 0
        [HideInInspector] _Metallic("Metallic", Range(0, 1)) = 0
        [HideInInspector] _SpecColor("Specular", Color) = (0.2,0.2,0.2,1)
        _DayNightLightmapArray("DayNightLightmapsArray", 2DArray) = "" {}
        _DayNightLightmapArray_AtlasSlice("DayNightLightmapsArray - Atlas Slice", Float) = 0
        _SingleLightmap("SingleLightmap", 2D) = "white" {}
    }
    SubShader{
        Tags {
            "RenderType" = "Opaque"
            "Queue" = "Geometry"
            "IgnoreProjector" = "True"
            "ForceNoShadowCasting" = "True"
        }

        LOD 200
        Offset[_ZOffset],[_ZOffset]

        CGPROGRAM
        #pragma surface surf Standard fullforwardshadows vertex:vert
        #pragma target 3.5
        #pragma require 2darray
        #pragma multi_compile_fog

        struct Input {
            float2 uv_BaseMap;
            float2 uv_BaseMap_Atlas;
            float2 uv_EmissionMap_Atlas;
            float4 color : COLOR;
            float3 worldPos;
        };

        UNITY_DECLARE_TEX2DARRAY(_BaseMap_Atlas);
        UNITY_DECLARE_TEX2DARRAY(_EmissionMap_Atlas);

        sampler2D _BaseMap;
        half _Glossiness;
        half _Metallic;
        fixed4 _BaseColor;
        fixed4 _EmissionColor;
        float _BaseMap_AtlasSlice;
        float _EmissionMap_AtlasSlice;
        float _Cutoff;
        float _Transparency;
        int _TransparencyMode;
        fixed4 _TransparentWealColor;

        UNITY_INSTANCING_BUFFER_START(Props)
        UNITY_INSTANCING_BUFFER_END(Props)

        void vert(inout appdata_full v, out Input o) {
            o.uv_BaseMap = v.texcoord.xy;
            o.uv_BaseMap_Atlas = v.texcoord.xy;
            o.uv_EmissionMap_Atlas = v.texcoord.xy;
            o.color = v.color;
            o.worldPos = v.vertex.xyz;
        }

        void surf(Input IN, inout SurfaceOutputStandard o) {
            fixed4 baseMapColor = tex2D(_BaseMap, IN.uv_BaseMap) * _BaseColor;
            fixed4 baseMapAtlasColor = UNITY_SAMPLE_TEX2DARRAY(_BaseMap_Atlas, float3(IN.uv_BaseMap_Atlas, _BaseMap_AtlasSlice)) * _BaseColor;
            fixed4 emissionMapAtlasColor = UNITY_SAMPLE_TEX2DARRAY(_EmissionMap_Atlas, float3(IN.uv_EmissionMap_Atlas, _EmissionMap_AtlasSlice)) * _EmissionColor;
            fixed4 c = baseMapColor * baseMapAtlasColor + emissionMapAtlasColor;
            o.Albedo = c.rgb;
            o.Metallic = _Metallic;
            o.Smoothness = _Glossiness;
            o.Alpha = c.a * (1.0 - _Transparency);
            clip(c.a - _Cutoff);
        }
        ENDCG
    }
}
