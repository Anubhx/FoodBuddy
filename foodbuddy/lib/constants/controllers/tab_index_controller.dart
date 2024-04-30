import 'package:get/get.dart';

class TabIndexController extends GetxController {
  
  final RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  void setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}