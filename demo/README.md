# demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Debug Setup (does not work on VM)

Steps taken to get debugging:
1. open VSCode
2. create app via `flutter create demo`
3. open VS Emulator for Android
4. start chosen emulator
5. start app via `flutter run --enable-software-rendering` (Optional: add `-v` for verbose debugging). `flutter run -v` throws Failed to read remove PID error.

## Debug Setup (does not work on VM)

Steps taken to get debugging:
1. open VSCode
2. create app via `flutter create demo`
3. enable chrome debugging via  
    `flutter channel beta` then  
    `flutter upgrade` then  
    `flutter config --enable-web`
5. start app via `flutter run -d chrome` (Optional: add `-v` for verbose debugging)

## Debugging Issues/Errors

Emulator not showing up in VSCode? Update Reg:
https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2015/cross-platform/troubleshooting-the-visual-studio-emulator-for-android?view=vs-2015&redirectedfrom=MSDN#ADB

OpenGL error. Failed to read remote PID. Failed to connect to IP address.
https://stackoverflow.com/questions/35483050/opengl-error-of-visual-studio-emulator-for-android
https://github.com/flutter/flutter/issues/15451 suggesting --enable-software-rendering flag
https://stackoverflow.com/questions/34779282/how-to-connect-to-localhost-from-vs-android-emulator

