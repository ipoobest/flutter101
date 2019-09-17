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
  String sortBy = 'เรียงลำดับล่าสุด'; // latest , low2hight, hight2low
  BuildContext _scaffoldContext;
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
        if(vga.advId != '' && vga.vgaPriceAdv != 0) vgas.add(vga);
      });
    });
  }

  sortAction(){
    setState(() {
      if(sortBy == 'เรียงลำดับล่าสุด'){
        sortBy = 'เรียงลำดับจากถูกไปแพง';
        vgas.sort((a,b) {
          return a.vgaPriceAdv - b.vgaPriceAdv;
        });
      } else if(sortBy == 'เรียงลำดับจากถูกไปแพง'){
        sortBy = 'เรียงลำดับจากแพงไปถูก';
        vgas.sort((a,b) {
          return b.vgaPriceAdv - a.vgaPriceAdv;
        });
      } else {
        sortBy = 'เรียงลำดับล่าสุด';
        vgas.sort((a,b) {
          return b.id - a.id;
        });
      }
    });
  }

showMessage(String txt) {
  Scaffold.of(_scaffoldContext).showSnackBar(
    SnackBar(
      content: Text(txt),
      duration: Duration(seconds: 1),
    )
  );
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
            onPressed: () => {
              sortAction(),
              showMessage(sortBy)
              },
          ),
        ],
      ),
      body: Builder(
        builder: (context){
          _scaffoldContext = context;
          return bodyBuilder();
        },)
    );
  }

  Widget bodyBuilder() {
    return ListView.builder(
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
    );
  }
}

