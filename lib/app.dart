import 'package:flutter_screenutil/flutter_screenutil.dart';

class App {
  static final App _instance = App.singleton();

  App.singleton();

  static App get instance {
    return _instance;
  }

  /// 初始化App
  Future<void> initial() async {
    await ScreenUtil.ensureScreenSize();
  }
}
