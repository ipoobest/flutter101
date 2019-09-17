import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pc build'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder:(context, index)  {
          return GestureDetector(
            onTap: () =>
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailPage(),
              )),
            child: Text('$index'));
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail page')),
          body: Container(
          child: RaisedButton(
            child: Text('Back'),
            onPressed: () => Navigator.pop(context),
          ),
      ),
    );
  }
}