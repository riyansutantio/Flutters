// ignore_for_file: deprecated_member_use

import 'package:belajar3/pages/page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}
