#version 330 core
//position
layout (location = 0) in vec3 aPos;
//colors
layout (location = 1) in vec3 aColor;
//textures
layout (location = 2) in vec2 aTex;


//output color to frag shader
out vec3 color;

//output textures to frag shader
out vec2 texCoord;


uniform mat4 camMatrix;

void main()
{
	//for 2d position
	//gl_Position = vec4(aPos.x + aPos.x * scale, aPos.y + aPos.y * scale, aPos.z + aPos.z * scale, 1.0);

	gl_Position = camMatrix*vec4(aPos,1.0);

	color = aColor;
	texCoord = aTex;
}
