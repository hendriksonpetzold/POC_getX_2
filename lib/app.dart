import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_poc2/page/home/home_page.dart';
import 'package:getx_poc2/page/test_get_page/get_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Poc 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/getpage',
          page: () => const GetTestPage(),
        )
      ],
    );
  }
}
