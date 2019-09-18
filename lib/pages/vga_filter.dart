import 'package:flutter/material.dart';
import 'package:hello_flutter/models/vga.dart';

class VgaFilterPage extends StatefulWidget {

  final VgaFilter vgaFilter;

  VgaFilterPage({Key key, this.vgaFilter}):super(key:key);

  @override
  _VgaFilterPageState createState() => _VgaFilterPageState();
}

class _VgaFilterPageState extends State<VgaFilterPage> {

VgaFilter filter;

@override
  void initState() {
    super.initState();
    filter = widget.vgaFilter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Back'),
              onPressed: () {
                print('in ${filter.vgaBrans}');
                filter.vgaBrans = ['GIGABYTE'];
                Navigator.pop(context, filter);
              }
            ),
          ],
        ),
      ),
    );
  }
}