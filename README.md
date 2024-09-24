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

### At the project root

- change ```template_flutter_v324.iml``` the match the project name (eg: ```my_flutter_proj.iml```), **using the folder name is ideal**.

### Post processing

From the IDE or terminal do the following: *Cut/Paste into terminal*

```zsh
dart run flutter_launcher_icons  #creates icons
flutter clean
flutter pub get
dart run build_runner build -d
dart pub global activate flutter_gen
fluttergen
cd ios/
pod install
cd ..
pwd
```
