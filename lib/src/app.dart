import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello0dssadwaa'),
        ),
        body: Center(child: Text('Tesssstqaaaaasa12sa3cosssmplete')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Hello World');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
