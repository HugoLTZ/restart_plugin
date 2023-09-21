import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'restart_plugin_method_channel.dart';

abstract class RestartPluginPlatform extends PlatformInterface {
  /// Constructs a RestartPluginPlatform.
  RestartPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static RestartPluginPlatform _instance = MethodChannelRestartPlugin();

  /// The default instance of [RestartPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelRestartPlugin].
  static RestartPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RestartPluginPlatform] when
  /// they register themselves.
  static set instance(RestartPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> restartApp() {
    throw UnimplementedError('restartApp() has not been implemented.');
  }
}
