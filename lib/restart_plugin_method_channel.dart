import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'restart_plugin_platform_interface.dart';

/// An implementation of [RestartPluginPlatform] that uses method channels.
class MethodChannelRestartPlugin extends RestartPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('restart_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> restartApp() async{
    return await methodChannel.invokeMethod("restart");
  }
}
