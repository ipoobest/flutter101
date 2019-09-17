import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  child: CachedNetworkImage(
                    imageUrl: "http://via.placeholder.com/350x150",
                    placeholder: (context, url) =>  CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>  Icon(Icons.error),
              ),
                ),
                Text('$index'),
              ],
            ));
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