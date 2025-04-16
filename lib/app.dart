import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shifu/utils/log.dart';
import 'package:shifu/utils/storage_manager.dart';

class App {
  static final App _instance = App.singleton();

  App.singleton();

  static App get instance {
    return _instance;
  }

  /// 初始化App
  Future<void> initial() async {
    // 初始化SharedPreferences
    await StorageManager.init();

    // 初始化GetStorage
    await GetStorage.init();

    // 初始化屏幕适配
    await ScreenUtil.ensureScreenSize();

    L.setDebug(kDebugMode);
  }
}
