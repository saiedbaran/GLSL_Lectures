#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec3 iResolution;

float createCircle(vec2 position, float radius) {
    return step(radius, length(position));
}

void main() {
    vec2 position = gl_FragCoord.xy / u_resolution;

    vec3 newColor = vec3(1, 0, 0);

    float circle = createCircle(position, 0.3);
    newColor = vec3(circle, 0, 0);

    gl_FragColor = vec4(newColor, 1);
}