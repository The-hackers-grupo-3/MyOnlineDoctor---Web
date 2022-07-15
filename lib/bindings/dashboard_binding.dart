import 'package:get/get.dart';
import 'package:telemedinaweb/controllers/dashboard_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());
  }
}
