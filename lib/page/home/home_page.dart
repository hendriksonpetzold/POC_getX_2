import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_poc2/page/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Getx Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
              builder: (_) {
                return Text(
                  '${controller.count}',
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: Get.width * .4,
              child: ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text('Increment'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: Get.width * .4,
              child: ElevatedButton(
                onPressed: () {
                  controller.decrement();
                },
                child: const Text('Decrement'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: Get.width * .4,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/getpage');
                },
                child: const Text('Navigation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
