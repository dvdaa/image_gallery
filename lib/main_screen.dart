import 'package:flutter/material.dart';
import 'package:image_gallery/about_me_screen.dart';
import 'package:image_gallery/custom_app_bar.dart';
import 'package:image_gallery/gallery_screen.dart';
import 'package:image_gallery/style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: [
        CustomAppBar(title: "MyGallery"), // index 0
        CustomAppBar(title: "Details"), // index 1
      ][selectedScreen],
      body: [
        GalleryScreen(), // index 0
        AboutMeScreen(), // index 1
      ][selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Style.backgroundColor,
        selectedItemColor: Style.primaryColor,
        currentIndex: selectedScreen,
        onTap: (i) {
          setState(
            () {
              if (selectedScreen != i) selectedScreen = i;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            label: "Gallery",
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.photo),
            ),
          ),
          BottomNavigationBarItem(
            label: "About Me",
            icon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}