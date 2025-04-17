import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shifu/common_ui/iconfont.dart';
import 'package:shifu/const/app_colors.dart';
import 'package:shifu/const/app_images.dart';
import 'package:shifu/const/app_spacing.dart';
import 'package:shifu/const/app_theme.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Page')),
      body: Center(
        child: Column(
          children: [
            16.hGap,
            Image.asset(
              AppImages.logoCircle,
              width: 80.w,
              height: 80.w,
            ),
            16.hGap,
            16.hGap,
            Icon(
              IconFonts.icon_aqrz,
              size: 20.w,
              color: Colors.redAccent,
            ),
            16.hGap,
            Icon(
              IconFonts.icon_pyrz,
              size: 25.w,
              color: AppColors.warning,
            ),
            16.hGap,
            Icon(
              IconFonts.icon_glrz,
              size: 30.w,
              color: AppColors.success,
            ),
            16.hGap,
            Icon(
              IconFonts.icon_smrz,
              size: 35.w,
              color: AppColors.primary,
            ),
            16.hGap,
            Text(
              'Order Page',
              style: TextStyle(
                fontSize: 16.w,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Order Page - dinPro font',
              style: TextStyle(
                fontSize: 16.w,
                fontWeight: FontWeight.bold,
                fontFamily: AppFontFamily.dinPro,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
