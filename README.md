# Pharo-LibVLC

[![Pharo version](https://img.shields.io/badge/Pharo-8.0-%23aac9ff.svg)](https://pharo.org/download)

Binding FFI of [libvlc](https://www.videolan.org/developers/vlc/doc/doxygen/html/group__libvlc.html) for [Pharo](http://pharo.org/) 

## Install

1. Install VLC 3.x.x

2. In a Pharo 8 image

```st
Metacello new
  baseline: 'VLC';
  repository: 'github://badetitou/Pharo-LibVLC';
  load.
```

> You should be able to execute `VLCLibrary uniqueInstance getVersion`

## Quick example

```st
vlc := VLCLibrary uniqueInstance createVLCInstance.
media := vlc createMediaFromPath: 'my/file/path.mp3'.
mediaPlayer := VLCLibrary uniqueInstance mediaPlayerNewFromMedia: media.
mediaPlayer play
```

## Documentation
