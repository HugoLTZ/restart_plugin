
import 'restart_plugin_platform_interface.dart';

class RestartPlugin {
  Future<String?> getPlatformVersion() {
    return RestartPluginPlatform.instance.getPlatformVersion();
  }
  static Future<bool> restartApp(){
    return RestartPluginPlatform.instance.restartApp();
  }
}
