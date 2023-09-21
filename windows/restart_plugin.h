#ifndef FLUTTER_PLUGIN_RESTART_PLUGIN_H_
#define FLUTTER_PLUGIN_RESTART_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace restart_plugin {

class RestartPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RestartPlugin();

  virtual ~RestartPlugin();

  // Disallow copy and assign.
  RestartPlugin(const RestartPlugin&) = delete;
  RestartPlugin& operator=(const RestartPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace restart_plugin

#endif  // FLUTTER_PLUGIN_RESTART_PLUGIN_H_
