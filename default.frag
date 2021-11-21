
#version 330 core
out vec4 FragColor;

//import color from vertex shader
in vec3 color;

//import texture from vertex shader
in vec2 texCoord;

uniform sampler2D tex0;

void main()
{
	FragColor = texture(tex0, texCoord);
	//FragColor = vec4(color,1.0f);
}
