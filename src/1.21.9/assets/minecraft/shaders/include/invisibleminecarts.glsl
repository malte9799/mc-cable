#version 330

bool CompareVec3(vec3 val1,vec3 val2,vec3 maxdiff) {

    return all(lessThan(abs(val1 - val2), maxdiff));
}

bool IsMinecart() {

    vec2 defTextureSize = vec2(64.0,32.0);

    bvec4 checkEmpty = bvec4(
        texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
        texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
        texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
        texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
    );

    bvec4 checkValid = bvec4(
        texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
        texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
        texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
        texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
    );

    return all(checkEmpty) && all(checkValid);
}

bool IsValid() {

    return (
        IsMinecart() &&
        (
            CompareVec3(normalize(abs(Normal)),normalize(vec3(1.025,0.5,0.45)),vec3(0.01)) ||
            CompareVec3(normalize(abs(Normal)),normalize(vec3(0.3,0.75,0.135)),vec3(0.01)) ||
            CompareVec3(normalize(abs(Normal)),normalize(vec3(0.435,0,0.985)),vec3(0.01))
        )
    );
}
