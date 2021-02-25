#version 150

in vec3 position;
in vec3 color;

uniform mat4 mvp;

smooth out vec4 vertexColor;

void main() {
  gl_Position = mvp * vec4(position, 1.0);

  vec3 linear = pow(color, vec3(1.0 / 2.2));
  float dst = distance(vec4(0, 0, 2, 1), gl_Position) * 0.4;
  vec3 scaled = linear * vec3(dst);

//  vertexColor = vec4(color, 1.0);

  vertexColor = vec4(pow(scaled, vec3(2.2)), 1.0);
}
