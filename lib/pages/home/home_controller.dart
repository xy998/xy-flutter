import 'package:get/get.dart';

class HomeController extends GetxController {
  // 当前选中的tab索引
  static final RxInt currentTab = 0.obs;

  // 切换tab
  static void switchTab(int index) {
    currentTab.value = index;
  }
}
