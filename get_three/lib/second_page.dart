import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_three/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Get.to(()=>ThirdPage());
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
                        'Tap for Third page',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )
            ),
          ],
        ),
      ),
    );
  }
}
