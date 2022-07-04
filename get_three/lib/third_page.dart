import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_three/controllers/tap_controller.dart';
import 'package:get_three/my_home_page.dart';

import 'controllers/list_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///TapController controller = Get.find();
    ListController listController = Get.put(ListController());

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                  () => Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff89dad0)),
                        child: Center(
                            child: Text(
                              "X value " + Get.find<TapController>().x.toString(),

                              /// controller.x.toString(),
                              style: const TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff89dad0)),
                        child: Center(
                            child: Text(
                              "Y value " + Get.find<TapController>().y.value.toString(),

                              /// controller.x.toString(),
                              style: const TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff89dad0)),
                        child: Center(
                            child: Text(
                              "Sum of X + Y " + Get.find<TapController>().z.toString(),
                              /// controller.x.toString(),
                              style: const TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ],
                  ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                      "Increase Y  ",
                      /// controller.x.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().sum();
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: Center(
                    child: Text(
                      "Sum of X + Y ",
                      /// controller.x.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),

            GestureDetector(
              onTap: () {
                Get.find<ListController>().setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                      "Saved sums",
                      /// controller.x.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
