# restart_plugin

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

只需使用一行代码即可重启app，目前仅在flutter的Android上测试过，Android版本为11
示例：

 void restart(){
    RestartPlugin.restartApp();
 }

