#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec2 uv = (model_uv * 2.0) - 1.0;

    float theta = atan(uv.y, uv.x);
    float new_radius = pow(length(uv), 1.5);
    vec2 new_uv = vec2(new_radius * cos(theta), new_radius * sin(theta)) * 0.5 + 0.5; // Calc from assignemnt

    // Color
    FragColor = texture(image, new_uv);

}
