#version 330 core
layout (points) in;
layout (points, max_vertices = 2) out;

void main()
{
  gl_Position = gl_in[0].gl_Position;
  EmitVertex();

  gl_Position = gl_in[0].gl_Position + vec4(0.0, 0.1, 0.0, 0.0);
  EmitVertex();

  EndPrimitive();
}
