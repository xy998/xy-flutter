import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shifu/const/app_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile page')),
      body: Column(
        children: [
          Text(
            'Profile Page',
            style: TextStyle(
              fontSize: 16.w,
              fontWeight: FontWeight.bold,
              fontFamily: AppFontFamily.dinPro,
            ),
          ),
        ],
      ),
    );
  }
}
