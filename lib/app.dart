import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_poc2/page/get_page/get_page.dart';
import 'package:getx_poc2/page/home/home_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx POC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/page1',
          page: () => const GetTestPage(),
        )
      ],
    );
  }
}
