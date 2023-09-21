import 'package:flutter_test/flutter_test.dart';
import 'package:restart_plugin/restart_plugin.dart';
import 'package:restart_plugin/restart_plugin_platform_interface.dart';
import 'package:restart_plugin/restart_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRestartPluginPlatform
    with MockPlatformInterfaceMixin
    implements RestartPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RestartPluginPlatform initialPlatform = RestartPluginPlatform.instance;

  test('$MethodChannelRestartPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRestartPlugin>());
  });

  test('getPlatformVersion', () async {
    RestartPlugin restartPlugin = RestartPlugin();
    MockRestartPluginPlatform fakePlatform = MockRestartPluginPlatform();
    RestartPluginPlatform.instance = fakePlatform;

    expect(await restartPlugin.getPlatformVersion(), '42');
  });
}
