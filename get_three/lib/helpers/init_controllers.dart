import 'package:get/get.dart';
import 'package:get_three/controllers/list_controller.dart';
import 'package:get_three/controllers/tap_controller.dart';

Future<void> init() async{
  Get.lazyPut(()=> TapController());
  Get.lazyPut(()=> ListController());
}