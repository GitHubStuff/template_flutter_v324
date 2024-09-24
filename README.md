# template_flutter_v324

A new Flutter project.

## Getting Started

### Changes to create unique app

- Find/Replace '**my.domain**' with your custome domain (eg: "*mydomain.com*")
- Find/Replace '**reverse.domain**' with your reverse domain (eg: "*com.mydomain*")
- Find/Replace '**domainSuffix**' with your domain's suffix for the apps (eg: "*com.mydomain.[domainSuffx]*")
- Find/Replace '**AndroidAppName**' with android app name (eg: "*Android Pain*")
- Find/Replace '**IOSAppName**' with the ios app name that's on screen (eg: "*My Awesome iOS App*")
- Find/Replace '**LinuxName**' with the application file name for Linux (eg: "*MyLinuxFile*")
- Find/Replace '**LinuxTitle**' with text for screen banners (eg: "*Welcome to the Linux App*")
- Find/Replace '**MacAppName**' with name of the MacOS version of the app (eg: "*MyMacApp*"), use camel case
- Find/Replace '**WindowsName**' with the application file name for Windows (eg: "*MyWidowsExcuse*")
- Find/Replace '**template_flutter_v324**' with the project folder name (eg: "*my_proj_folder*")

### Optional (but recommended edits)

There is a folder ```/assets/images``` with images for the app-icon and the splash screen.

The image ```demo1024x1024.png``` is the splash screen image used in ```main.dart```, this images is displayed for a few moments to let (at minimum) the ```hive``` database used to persist theme to startup.

To replace with a custom image:

- Replace ```demo1024x1024.png``` with your own (recommend size is 1024x1024 for max screen size coverage)
- Search/Replace ```demo1024x1024.png``` with your imamge name

The image ```ic4u1024x1024.png``` is the template image used by the ```flutter_launcher_icons``` package that will create icons for use on all platforms. (see ```pubspec.yaml``` for how they are defined). To use your own custom images:

- Replace ```ic4u1024x1024.png``` with your image (1024x1024 is optimal size).

When the icon generation runs in post-process (see next), the images will be generated an added to all the platform(s). Edits to ```pubspec.yaml``` to change limit/refine their creation and use.

### Post processing

From the IDE or terminal do the following: *Cut/Paste into terminal*

```zsh
dart run flutter_launcher_icons  #(see footnote))
flutter clean
flutter pub get
dart run build_runner build -d
dart pub global activate flutter_gen
fluttergen #(see footnote)
cd ios/
pod install #(see footnote)
cd ..
pwd
```

-- see [flutter_launcher_icons: ^0.14.1](https://pub.dev/packages/flutter_launcher_icons) A command-line tool which simplifies the task of updating your Flutter app's launcher icon. Fully flexible, allowing you to choose what platform you wish to update the launcher icon for and if you want, the option to keep your old launcher icon in case you want to revert back sometime in the future.

-- see [flutter_gen_runner: ^5.7.0](https://pub.dev/packages/flutter_gen_runner) The Flutter code generator for your assets, fonts, colors, … — Get rid of all String-based APIs.

-- This is a bit of a hack, but Cocoapods seems to need a ```pod install``` to stay in-sync with pods needed in flutter apps. **NOTE: Could be needed when packages in ```pubspec.yaml``` are updated.** *{At least on major version updates}*
