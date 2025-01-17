import 'package:flutter/material.dart';
import 'package:image_gallery/gallery_data.dart';
import 'package:image_gallery/gallery_item.dart';
import 'package:image_gallery/tappable_card.dart';
import 'package:image_gallery/style.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.backgroundColor,
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        padding: EdgeInsets.all(16),
        children: [
          for (GalleryItem galleryItem in galleryData)
            TappableCard(galleryItem: galleryItem)
        ],
      ),
    );
  }
}

