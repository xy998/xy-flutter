import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:shifu/app.dart';
import 'package:shifu/const/app_const.dart';
import 'package:shifu/const/app_theme.dart';
import 'package:shifu/routes/app_pages.dart';
import 'package:shifu/utils/storage_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 强制竖屏
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 初始化App
  await App.instance.initial();

  Size size = Platform.isMacOS ? const Size(1024, 768) : const Size(375, 812);

  runApp(MyApp(designSize: size));
}

class MyApp extends StatelessWidget {
  final Size designSize;

  const MyApp({
    super.key,
    required this.designSize,
  });

  @override
  Widget build(BuildContext context) {
    // 初始化屏幕适配
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: AppConst.siteName,

         // 主题配置
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: _getSavedThemeMode(),

          // 路由配置
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,

          // 默认转场动画
          defaultTransition: Transition.cupertino,

          // 错误页面
          unknownRoute: GetPage(
            name: '/notfound',
            page: () => const Scaffold(
              body: Center(
                child: Text('页面不存在'),
              ),
            ),
          ),
        );
      },
    );
  }
}

// 从存储中获取保存的主题模式
  ThemeMode _getSavedThemeMode() {
    final savedTheme = StorageManager.getString(AppConst.identifier.theme);
    switch (savedTheme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }