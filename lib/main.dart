import 'package:flutter/material.dart';
import 'package:nxt_gen_guidance/pages/home_page.dart';
import 'package:nxt_gen_guidance/pages/mentor_profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 10, 38, 118),
        ),
      ),
    );
  }
}
