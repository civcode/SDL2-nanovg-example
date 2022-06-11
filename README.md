### NanoVG-SDL2 starter

NanoVG is small antialiased vector graphics rendering library for OpenGL.

It has lean API modeled after HTML5 canvas API. It is aimed to be a practical and fun toolset for building scalable user interfaces and visualizations.

This codes gets you started with SDL2 as OpenGL helper!

### Useful links:

[My Home Page](https://acry.github.io/)

### used framework

[SDL2](https://www.libsdl.org/)  
[NanoVG](https://github.com/memononen/NanoVG)  
[stb_truetype](http://nothings.org)  
[stb_image](http://nothings.org)

optional:  
[freetype](http://freetype.org)

### civcode 2022-06-11
#### dependsencies (Ubuntu 20.04)
```
$ sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libglew-dev
```
#### runtime error
```
INFO: fallback
Shader shader/vert error:
0:1(10): error: GLSL 1.50 is not supported. Supported versions are: 1.10, 1.20, 1.30, 1.40, 1.00 ES, and 3.00 ES
```
- solution: set matching GL version according to this table [GLSL Versions](https://github.com/mattdesl/lwjgl-basics/wiki/glsl-versions#glsl-versions)
```
 main.c
 37 //SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION,     2);
 38 //SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION,     0);
 39 SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION,       3);
 40 SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION,       2);
```

