import 'package:flutter/material.dart';

class AppImages {
  // 基础路径
  static const String _lightPath = 'assets/images/light';
  static const String _darkPath = 'assets/images/dark';
  static const String imagesPath = 'assets/images/';
  
  // 图片名称
  static const String _logoName = 'logo.png';
  
  static const String logoCircle = 'assets/images/logo.png';

  // 根据主题获取对应的图片路径
  static String getImagePath(BuildContext context, String imageName) {
    final basePath = Theme.of(context).brightness == Brightness.dark ? _darkPath : _lightPath;
    return '$basePath/$imageName';
  }

  // 获取logo
  static String getLogo(BuildContext context) {
    return getImagePath(context, _logoName);
  }
}
