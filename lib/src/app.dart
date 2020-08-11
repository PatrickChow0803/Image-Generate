import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image+model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Generate'),
        ),
        body: ImageList(images: images),
        floatingActionButton: FloatingActionButton(
          // This gives onPressed a handel to the method fetchImage.
          // DO NOT type in fetchImage(), otherwise it will cause the method to be run on startup.
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
