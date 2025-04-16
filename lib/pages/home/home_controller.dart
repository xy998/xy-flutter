import 'package:get/get.dart';
import 'package:shifu/utils/log.dart';

class HomeController extends GetxController {
  // 当前选中的tab索引
  static final RxInt currentTab = 0.obs;

  // 切换tab
  static void switchTab(int index) {
    l.i('切换tab 索引：$index');
    currentTab.value = index;
  }
}
