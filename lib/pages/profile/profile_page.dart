import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile page'),
      ),
      body: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 16.w,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
