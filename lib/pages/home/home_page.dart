import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:shifu/pages/home/home_controller.dart';
import 'package:shifu/pages/order/order_page.dart';
import 'package:shifu/pages/profile/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return LazyLoadIndexedStack(
          index: HomeController.currentTab.value,
          children: const [
            OrderPage(),
            ProfilePage(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: HomeController.currentTab.value,
          onTap: (index) {
            HomeController.switchTab(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: '订单',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '个人中心',
            ),
          ],
        );
      }),
    );
  }
}
