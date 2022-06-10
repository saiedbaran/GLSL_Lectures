#version 330

in vec4 color;
in vec3 vPos;
out vec4 outColor;

uniform vec2 u_resolution;
uniform vec3 iResolution;

float createCircle(vec2 position, float radius) {
   return step(radius, length(position));
}

void main() {
   vec2 position = gl_FragCoord.xy / u_resolution;

   vec3 newColor = vec3(0);

   float circle = createCircle(vPos.xy, 0.5);
   newColor = vec3(circle);

   gl_FragColor = vec4(newColor, 1);
}