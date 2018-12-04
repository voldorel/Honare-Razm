//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec2 v_vPos;

void main()
{
    vec4 object_space_pos = vec4(in_Position, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vTexcoord = in_TextureCoord;
    v_vPos = gl_Position.xy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec2 v_vPos;

uniform float time;
uniform float hRate;
uniform float waveIntensity;

vec2 newPos;
vec2 wave;
float depthScale;

void main()
{
    depthScale = 1.0 / (1.0 + v_vTexcoord.y);
    wave.x = min(v_vTexcoord.y * 5.0, 1.0) * sin(time + v_vTexcoord.y * waveIntensity) / 100.0;
    wave.y = min(v_vTexcoord.y * 5.0, 1.0) * sin(time + v_vTexcoord.x * waveIntensity) / 100.0;
    newPos.x = v_vPos.x / 2.0 * depthScale + 0.5;
    newPos.y = v_vPos.y / 2.0 + hRate * 2.0 - 0.5;
    gl_FragColor = texture2D( gm_BaseTexture, newPos + wave);
}
