import 'package:get/get.dart';

import 'controllers/list_controller.dart';
import 'controllers/tap_controller.dart';



/// with this way, we do not need to initialize the controllers in the main.dart

class InitDep implements Bindings{

 @override
  void dependencies() {
    // TODO: implement dependencies
  Get.lazyPut(()=> TapController());
  Get.lazyPut(()=> ListController());
  }
}