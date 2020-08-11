import 'package:flutter/material.dart';
import '../models/image+model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList({this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, int index) {
        return buildImage(images[index]);
      },
      itemCount: images.length,
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 10.0)),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
