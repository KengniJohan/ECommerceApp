import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:e_commerce_app/controller/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }

}