import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_three/init_dependecies.dart';
import 'helpers/init_controllers.dart' as di;
import 'my_home_page.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:InitDep(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

