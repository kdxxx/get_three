import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_three/controllers/tap_controller.dart';
import 'package:get_three/second_page.dart';

import 'first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///TapController controller = Get.put(TapController());
    // dependency injection
    /// it is transferred to the init_controllers.dart

    TapController controller = Get.find();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
            /// "_" means its name is not important
            return  Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff89dad0)),
              child: Center(
                  child: Text(
                    controller.x.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            );
          }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                  'tap',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>FirstPage());
              },
              child:  Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                      'Go to First Page',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=> SecondPage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                  'Go to Second Page',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff89dad0)),
                child: const Center(
                    child: Text(
                  'tap',
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
