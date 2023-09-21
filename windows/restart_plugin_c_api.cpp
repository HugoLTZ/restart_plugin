#include "include/restart_plugin/restart_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "restart_plugin.h"

void RestartPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  restart_plugin::RestartPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
