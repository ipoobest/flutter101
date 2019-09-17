import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_store/flutter_cache_store.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:hello_flutter/pages/vga_deail.dart';
import 'package:hello_flutter/models/vga.dart';


class VgaPage extends StatefulWidget {
  @override
  _VgaPageState createState() => _VgaPageState();
}

class _VgaPageState extends State<VgaPage> {
  List <Vga> vgas = [];
  String sortBy = 'latest'; // latest , low2hight, hight2low
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
    final jsonString = json.decode(file.readAsStringSync());

    setState(() {
      jsonString.forEach((v) {
        final vga = Vga.fromJson(v);
        if(vga.advId != '') vgas.add(vga);
      });
    });
  }

  sortAction(){
    setState(() {
      if(sortBy == 'latest'){
        sortBy = 'low2hight';
        vgas.sort((a,b) {
          return a.vgaPriceAdv - b.vgaPriceAdv;
        });
      } else if(sortBy == 'low2hight'){
        sortBy = 'hight2low';
        vgas.sort((a,b) {
          return b.vgaPriceAdv - a.vgaPriceAdv;
        });
      } else {
        sortBy = 'latest';
        vgas.sort((a,b) {
          return b.id - a.id;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pc build'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.sort),
            tooltip: 'Restitch it',
            onPressed: () => sortAction(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: vgas.length,
        itemBuilder:(context, index)  {
          var v = vgas[index];
          return GestureDetector(
            onTap: () =>
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => VgaDetailPage(),
              )),
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  child: CachedNetworkImage(
                    imageUrl: "https://www.advice.co.th/pic-pc/vga/${vgas[index].vgaPicture}",
                    // placeholder: (context, url) =>  CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>  Icon(Icons.error),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${vgas[index].vgaBrand}'),
                          Text('${vgas[index].vgaModel}'),
                          Text('${vgas[index].vgaPriceAdv} บาท'),
                        ],
                      ),
                    ),
                  ),
              ],
            ));
        },
      ),
    );
  }
}

