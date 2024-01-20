import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_home/screen_home.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      home: const ScreenHome(),
    );
  }
}
