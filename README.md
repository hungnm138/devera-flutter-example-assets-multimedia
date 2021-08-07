<p align="center">
  <a href="https://devera.vn/">
    <img src="https://i.ibb.co/g9xNY1k/Devera-Logo.png" alt="Logo" width=151 height=127>
  </a>
</p>

<p align="center">
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter" alt="Platform Flutter"></a>
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Made%20with-Love-1f425f.svg" alt="Made with Love"></a>
<p>

<p align="center">
  <a href="www.buymeacoffee.com/hungnm138">
    <img src="https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black" alt="Buy me a coffee"/>
  </a>
</p>

<h1 align="center">Flutter Assets & Multimedia Examples</h1>

<p align="center">An example app that demonstrates how to work with assets, images and multimedia in Flutter.</p>

# Getting Started

This example project is used in [Devera](https://devera.vn) Flutter course to demonstrate how to work with assets, images (load and cache images) and multimedia (playing audio/video files) in your Flutter app. 

# Assets and images

Flutter apps can include both code and `assets` (sometimes called resources). An asset is a file that is bundled and deployed with your app, and is accessible at runtime. Common types of assets include static data (for example, JSON files), configuration files, icons, and images (JPEG, WebP, GIF, animated WebP/GIF, PNG, BMP, and WBMP).

## Specifying assets
Flutter uses the `pubspec.yaml` file, located at the root of your project, to identify assets required by an app.

Here is an example:

```yaml
flutter:
    assets:
        - assets/my_icon.png
        - assets/background.png
```

To include all assets under a directory, specify the directory name with the `/` character at the end:

```yaml
flutter:
  assets:
    - directory/
    - directory/subdirectory/
```

## Asset variants

The build process supports the notion of asset variants: different versions of an asset that might be displayed in different contexts. When an asset’s path is specified in the `assets` section of `pubspec.yaml`, the build process looks for any files with the same name in adjacent subdirectories. Such files are then included in the asset bundle along with the specified asset.

For example, if you have the following files in your application directory:

```
.../pubspec.yaml
.../graphics/my_icon.png
.../graphics/background.png
.../graphics/dark/background.png
...etc.
```

And your `pubspec.yaml` file contains the following:

```yaml
flutter:
  assets:
    - graphics/background.png
```

Then both `graphics/background.png` and `graphics/dark/background.png` are included in your asset bundle. The former is considered the *main* asset, while the latter is considered a *variant*.

If, on the other hand, the graphics directory is specified:

```yaml
flutter:
  assets:
    - graphics/
```

Then the `graphics/my_icon.png`, `graphics/background.png` and `graphics/dark/background.png` files are also included.

Flutter uses asset variants when choosing resolution-appropriate images. In the future, this mechanism might be extended to include variants for different locales or regions, reading directions, and so on.

# Playing video

Playing videos is a common task in app development, and Flutter apps are no exception. To play videos, the Flutter team provides the [video_player](https://pub.dev/packages/video_player) plugin. You can use the `video_player` plugin to play videos stored on the file system, as an asset, or from the internet.

On iOS, the `video_player` plugin makes use of [AVPlayer](https://developer.apple.com/documentation/avfoundation/avplayer) to handle playback. On Android, it uses [ExoPlayer](https://google.github.io/ExoPlayer/).

This example demonstrates how to use the `video_player` package to load a video from the assets with basic play and pause controls using the following steps:

1. Add the `video_player` dependency.
2. Add permissions to your app (permissions to stream videos from the internet).
3. Create and initialize a `VideoPlayerController`.
4. Display the video player.
5. Play and pause the video.

# Pub Packages
| Package  | Usage |
| ------ | ------ |
| [Provider](https://pub.dev/packages/provider) | State management and context based DI
| [Cached Network Image](https://pub.dev/packages/cached_network_image) | Flutter library to load and cache network images. Can also be used with placeholder and error widgets.
| [Dio](https://pub.dev/packages/dio) | A powerful Http client for Dart, which supports Interceptors, FormData, Request Cancellation, File Downloading, Timeout etc.
| [Flutter SVG](https://pub.dev/packages/flutter_svg) | An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable Vector Graphics 1.1 files.
| [Video Player](https://pub.dev/packages/video_player) | Flutter plugin for displaying inline video with other Flutter widgets on Android, iOS, and web.
| [Assets Audio Player](https://pub.dev/packages/assets_audio_player) | Play music/audio stored in assets files directly from Flutter & Network, Radio, LiveStream, Local files.

# Resources

[file-examples.com](https://file-examples.com/) is a service designed for developers, designers, testers. Download files in many resolution or size for test or demo use.

# Conclusion

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

> Also, visit the [Devera Academy](https://devera.vn) website or [Facebook](https://www.facebook.com/DeveraAcademy/) fanpage to find out more about the courses.

<br />

<p align="center">
  <a href="https://www.buymeacoffee.com/hungnm138" target="_blank">
    <img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important; border-radius: 5px !important;" />
  </a>
</p>
