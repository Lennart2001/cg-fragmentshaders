#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    // range between -1 and 1
    vec2 uv = model_uv * 2.0 - 1.0;

    // Calc from asisgnmetn
    float offset = sin((length(uv) * 30.0) - (time * 5.0)) + 0.5 / 60.0;
    vec2 new_uv = uv + offset;

    // Color
    FragColor = texture(image, new_uv);
}
