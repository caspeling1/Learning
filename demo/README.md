## IDE

VSCode used for developement and documentation.
Chrome used for debugging and running emulators.

<u>Extentions:</u>  
\- Flutter  
\- Dart  
\- Github Markdown Preview  
\- Debugger for Chrome

Dummy data to be fed to mocky.io and the futures updated to fetch via api. See js files for json.

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
4. start app via `flutter run -d chrome` (Optional: add `-v` for verbose debugging)

Dart Tools has many user settings. Go through to set them all.

5. start via VS chrome debugger F5 hereafter.

## Debugging Issues/Errors

Emulator not showing up in VSCode? Update Reg:
https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2015/cross-platform/troubleshooting-the-visual-studio-emulator-for-android?view=vs-2015&redirectedfrom=MSDN#ADB

OpenGL error. Failed to read remote PID. Failed to connect to IP address.
https://stackoverflow.com/questions/35483050/opengl-error-of-visual-studio-emulator-for-android
https://github.com/flutter/flutter/issues/15451 suggesting --enable-software-rendering flag
https://stackoverflow.com/questions/34779282/how-to-connect-to-localhost-from-vs-android-emulator

Missing methods in models:  
run `flutter packages pub run build_runner clean` to regenerate the model.g.dart file

## Basic shortcuts to remember

Control + Shift + R on any piece of text will bring up the flutter refactoring context menu. Use it to extract widgets or wrap with styling type widgets etc.

Control + Shift + P brings up the command palette (VSCode)

## Code Structure

Inspiration and tutorial from:
- [FilledStacks - Flutter Provider Architecture for State Management](https://www.youtube.com/watch?v=kDEflMYTFlk)  
- [Flutter Architecture - My Provider Implementation Guide](https://www.filledstacks.com/post/flutter-architecture-my-provider-implementation-guide/)

Core is divided into three folders.

- Models: Contains all the plain data models  
- Services: Contains the dedicated files that will handle actual business logic  
- ViewModels: Contains the Provider models for each of the Widget views

UI is also divided into three folders.

- components/Shared: Contains files used in multiple other UI files
- Views/Pages: Contains the files for the app views
- components/Widgets: Contains widget files that are too big to keep in the view files.