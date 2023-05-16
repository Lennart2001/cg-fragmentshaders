#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // coloric intake
    vec3 color = texture(image, model_uv).rgb;

    // grayscale b
    float grayscale = dot(color, vec3(0.299, 0.587, 0.114));

    // Color
    FragColor = vec4(grayscale, grayscale, grayscale, 1.0);

}
