import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            "angka ${counterController.counter.value}",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
