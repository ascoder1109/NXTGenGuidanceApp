import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/colors.dart';
import 'package:nxt_gen_guidance/pages/home_page.dart';
import 'package:nxt_gen_guidance/pages/login_page.dart';
import 'package:nxt_gen_guidance/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: kBlueColor),
    );
  }
}
