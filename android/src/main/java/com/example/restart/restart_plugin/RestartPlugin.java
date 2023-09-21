package com.example.restart.restart_plugin;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** RestartPlugin */
public class RestartPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  private Context context;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "restart_plugin");
    channel.setMethodCallHandler(this);
    context = flutterPluginBinding.getApplicationContext();
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
//    if (call.method.equals("getPlatformVersion")) {
//      result.success("Android " + android.os.Build.VERSION.RELEASE);
//    } else {
//      result.notImplemented();
//    }
    switch (call.method){
      case "getPlatformVersion":
        result.success("Android " + android.os.Build.VERSION.RELEASE);
      break;
      case "restart":
        restartApp();
        break;
      default:result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }

  private void restartApp(){
//    System.out.println("正在重启APP");
//    final Intent intent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
//    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
//    context.startActivity(intent);
//    android.os.Process.killProcess(android.os.Process.myPid());
//    System.out.println("插件运行完毕");
//    Intent intent = getPackageManager()
//            .getLaunchIntentForPackage(getApplication().getPackageName());
    System.out.println("正在重启APP");
    Intent launchIntent = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
    launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
    context.startActivity(launchIntent);
    System.out.println("插件运行完毕");

  }

}
