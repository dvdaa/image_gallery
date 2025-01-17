class GalleryItem {
  final String _imageTitle;
  final DateTime _imageDate;
  final String _imageDescription;
  final String _imagePath;

  GalleryItem({
    required String imageTitle,
    required DateTime imageDate,
    required String imageDescription,
    required String imagePath,
  })  : _imageTitle = imageTitle,
        _imageDate = imageDate,
        _imageDescription = imageDescription,
        _imagePath = imagePath;

  // GETTER
  String get imageTitle => _imageTitle;
  String get imageDescription => _imageDescription;
  DateTime get imageDate => _imageDate;
  String get imagePath => _imagePath;
}