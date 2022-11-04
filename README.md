# Pharo-LibVLC <!-- omit in toc -->

- [Install](#install)
  - [Linux](#linux)
- [Quick example](#quick-example)
- [Documentation](#documentation)

[![Pharo version](https://img.shields.io/badge/Pharo-11.0-%23aac9ff.svg)](https://pharo.org/download)

Binding FFI of [libvlc](https://www.videolan.org/developers/vlc/doc/doxygen/html/group__libvlc.html) for [Pharo](http://pharo.org/) 

## Install

1. Install VLC 3.x.x

2. In a Pharo 11 image

```st
Metacello new
  baseline: 'VLC';
  repository: 'github://badetitou/Pharo-LibVLC';
  load.
```

> You should be able to execute `VLCLibrary uniqueInstance getVersion`

### Linux

If you work on linux, please check that `libvlc` and `libvlccore` are in your path.
To do so, you can execute `whereis libvlc` and `whereis libvlccore`.

If the `whereis` command return something like:

- `libvlccore: /usr/lib/libvlccore.so` → OK
- `libvlccore: ` → It means you didn't install correctly the libraries, or you used snap.
- `libvlccore: /usr/lib/libvlccore.so.x` → It means you've installed a specific version of the library. To use it with pharo please create a symbolic link without the ".x" → `ln -s /usr/lib/libvlccore.so.x /usr/lib/libvlccore.so`

If you used snap to install vlc, the path might be ` '/snap/vlc/current/usr/lib'`


## Quick example

```st
vlc := VLCLibrary uniqueInstance createVLCInstance.
"do not use accentuated characters for the path"
media := vlc createMediaFromPath: '/my/file/path.mp3'.
mediaPlayer := VLCLibrary uniqueInstance mediaPlayerNewFromMedia: media.
mediaPlayer play
```

Or using a media list.

```st
instance := VLCLibrary uniqueInstance createVLCInstance.
 
media := instance createMediaFromPath: '/home/badetitou/Musique/Coda.mp3'.
mediaList := instance createMediaList.
mediaList addMedia: media.

mediaListPlayer := instance createMediaListPlayer.
mediaListPlayer mediaList: mediaList.
mediaListPlayer mediaList.
mediaListPlayer play
```

## Documentation
