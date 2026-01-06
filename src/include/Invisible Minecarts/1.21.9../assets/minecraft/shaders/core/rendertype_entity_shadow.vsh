#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>


in vec3 Position;
in vec4 Color;
in vec2 UV0;

uniform sampler2D Sampler0;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

// bool IsMinecart() {

//     vec2 defTextureSize = vec2(64.0,32.0);

//     bvec4 checkEmpty = bvec4(
//         texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
//         texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
//         texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
//         texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
//     );

//     bvec4 checkValid = bvec4(
//         texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
//         texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
//         texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
//         texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
//     );

//     return all(checkEmpty) && all(checkValid);
// }

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color;
    // if (Color == vec4(123./255., 123./255., 0., Color.a)) {
    // if (IsMinecart()) {
    //     vertexColor.a = 0.0;
    // }

    texCoord0 = UV0;
}
