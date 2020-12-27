#version 330 core

in vec4 aPosition;
in vec4 aNormal;
in vec2 aTexCoord;

uniform mat4 uMvpMatrix;
uniform mat4 uModelMatrix;
uniform mat4 uNormalMatrix;

out vec3 vPosition;
out vec3 vNormal;
out vec2 vTexCoord;

void main()
{
    gl_Position = uMvpMatrix * aPosition;
    vPosition = vec3(uModelMatrix * aPosition);
    vNormal = normalize(vec3(uNormalMatrix * aNormal));
    vTexCoord = aTexCoord;
}
