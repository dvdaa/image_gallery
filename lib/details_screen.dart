import 'package:flutter/material.dart';
import 'package:image_gallery/gallery_item.dart';
import 'package:intl/intl.dart';
import 'package:image_gallery/style.dart';

class DetailsScreen extends StatefulWidget {
  final GalleryItem galleryItem;

  const DetailsScreen({required this.galleryItem, super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Style.primaryColor,
        leading: GestureDetector(
          child: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Details",
          style: TextStyle(
            color: Colors.white,
            fontWeight: Style.appBarFontWeight,
          )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 588,
            child: FittedBox(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.cover,
              child: Image.asset(widget.galleryItem.imagePath),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              spacing: 4,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.galleryItem.imageTitle,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: Style.titleFontSize ,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    DateFormat('dd.MM.yyyy')
                        .format(widget.galleryItem.imageDate),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: Style.subtitleFontSize,
                      fontWeight: Style.subtitleFontWeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.galleryItem.imageDescription,
                    style: TextStyle(
                      fontSize: Style.bodyFontSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
