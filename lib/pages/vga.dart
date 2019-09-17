import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_store/flutter_cache_store.dart';

import 'package:hello_flutter/pages/vga_deail.dart';


class VgaPage extends StatefulWidget {
  @override
  _VgaPageState createState() => _VgaPageState();
}

class _VgaPageState extends State<VgaPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    const url = "https://www.advice.co.th/pc/get_comp/vga";
    final store = await CacheStore.getInstance();
    File file = await store.getFile(url);
    print(file.readAsStringSync());
    print('test');
  }
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
                builder: (context) => VgaDetailPage(),
              )),
            child: Row(
              children: <Widget>[
                Text('$index'),
              ],
            ));
        },
      ),
    );
  }
}

