import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_uniqueid/my_controller.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx UniqueID',
      theme: ThemeData(primarySwatch: Colors.green, ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Getx UniqueID")),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(id: 'txtCount',builder: (controller){
              return Text("The value is ${controller.count}", style: const TextStyle(fontSize: 25));
            }),

            GetBuilder<MyController>(builder: (controller){
              return Text("The value is ${controller.count}", style: const TextStyle(fontSize: 25));
            }),

            const SizedBox(height: 10),
            ElevatedButton(onPressed: ()=> myController.increment(), child: const Text("Increment"))


          ]
        ))
      )
    );
  }
}
