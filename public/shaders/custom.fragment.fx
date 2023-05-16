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
    // Bruuuhhh we neeed to put everything beetween -1, 1
    vec2 uv = (model_uv * 2.0) - 1.0;

    // dooo the rippley ripp for the thingy
    float ripple_frequency = 12.5;
    float ripple_amplitude = 0.025;
    vec2 ripple_direction = normalize(vec2(1.0, 1.0));
    float ripple = sin(ripple_frequency * dot(uv, ripple_direction * time)) * ripple_amplitude;

    vec2 new_uv = fract(model_uv + ripple);
    vec4 sampled_color = texture(image, new_uv);

    // Shifty swifty the nifty color
    vec3 color_shifted = vec3(sampled_color.g + 0.3, sampled_color.b + 0.3, sampled_color.r + 0.3);

    // Color
    FragColor = vec4(color_shifted, 1.0);

}
