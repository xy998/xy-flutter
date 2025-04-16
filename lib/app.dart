import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shifu/const/app_const.dart';
import 'package:shifu/routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConst.siteName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Scaffold(
      //   body: Center(
      //     child: Text('GetMaterialApp'),
      //   ),
      // ),

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
  }
}
