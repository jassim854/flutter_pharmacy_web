import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_web/utilis/constants/Route.dart';
import 'package:flutter_pharmacy_web/utilis/constants/route_name.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_Website',
      getPages: GetPageList.pages,
      initialRoute: RouteName.loginScreen,
    );
  }
}
