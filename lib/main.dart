import 'package:flutter/material.dart';
import 'package:image_gallery/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        overscroll: false,
      ),
      home: MainScreen(),
    );
  }
}
