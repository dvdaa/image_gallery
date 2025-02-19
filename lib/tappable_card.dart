import 'package:flutter/material.dart';
import 'package:image_gallery/details_screen.dart';
import 'package:image_gallery/gallery_item.dart';
import 'package:image_gallery/style.dart';

class TappableCard extends StatefulWidget {
  final GalleryItem galleryItem;

  const TappableCard({required this.galleryItem, super.key});

  @override
  State<TappableCard> createState() => _TappableCardState();
}

class _TappableCardState extends State<TappableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(galleryItem: widget.galleryItem)
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child:
                  Image.asset(widget.galleryItem.imagePath, fit: BoxFit.cover),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  widget.galleryItem.imageTitle,
                  style: TextStyle(
                    fontSize: Style.cardFontSize,
                    fontWeight: Style.cardFontWeight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
