#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec3 color = texture(image, model_uv).rgb;

    // creart the different levels of thinhgs
    color = floor(color * 5.0) / 4.0;

    // Color
    FragColor = vec4(color, 1.0);
}
