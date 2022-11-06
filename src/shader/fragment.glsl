/* This file is part of Zutty.
 * Copyright (C) 2020 Tom Szilagyi
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * See the file LICENSE for the full license.
 */

#version 310 es

in highp vec2 texCoord;

layout (rgba8, binding = 0) readonly lowp uniform image2D imgOut;

uniform highp vec2 viewPixels;

layout (location = 0) out lowp vec4 outColor;

precision mediump float;
float fmin = 0.5;

void main ()
{
	float fmod = mod(gl_FragCoord.y, 2.0);
	float fstep = fmin + (1.0 - fmin) * fmod;
	vec4 il = imageLoad (imgOut, ivec2 (texCoord * viewPixels));
	outColor = vec4(il.x, il.y, il.z, il.w * fstep);
}
