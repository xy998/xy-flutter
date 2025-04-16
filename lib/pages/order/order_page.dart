import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order Page',
        ),
      ),
      body: Center(
        child: Text(
          'Order Page',
          style: TextStyle(
            fontSize: 16.w,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
