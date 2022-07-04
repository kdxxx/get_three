import 'package:get/get.dart';

class TapController extends GetxController{
 int _x = 0;
 int get x => _x;


 RxInt  _y = 0.obs;
 RxInt get y => _y;

 RxInt _z =0.obs;
 int get z => _z.value;

 void sum(){
   _z.value = x+_y.value;
   print(_z);
 }

 void increaseX(){
   _x++;
   update();
   /// we need this to see the changes in the screen.
   print(_x);
 }

 void decreaseX(){
   _x--;
   update();
   /// update is similar to setState
 }

 void increaseY(){
   _y.value++;
   /// when we use obs typw, we need to include value to change its value.
 }
 void decreaseY(){
   _y.value--;
 }


}