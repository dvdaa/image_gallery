import 'package:flutter/material.dart';
import 'package:image_gallery/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Style.primaryColor,
      title: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: Style.appBarFontWeight),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
