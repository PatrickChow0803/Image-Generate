import 'package:flutter/material.dart';
import '../models/image+model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList({this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, int index) {
        return Image.network(images[index].url);
      },
      itemCount: images.length,
    );
  }
}
