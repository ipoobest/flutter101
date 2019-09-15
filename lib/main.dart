import 'package:flutter/material.dart';

main(){
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage('https://i.pinimg.com/originals/92/4c/40/924c40b2c658b1a111b9cb5092f8544d.jpg')
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Hello world Pooh U can do it!!!!!.',
                    style: TextStyle(
                      fontSize: 20,
                      
                      ),
                    ),
                ),
                Container(
                  alignment: Alignment(1, 0),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Hoikhong!!!.',
                    style: TextStyle(fontStyle: FontStyle.italic),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}