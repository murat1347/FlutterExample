import 'package:flutter/material.dart';
import 'package:muratapp/Kisiler.dart';
import 'package:muratapp/SayfaB.dart';

class SayfaA extends StatefulWidget {

  Kisiler kisi;

  SayfaA({this.kisi});

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SAYFA A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Sayfa B Git"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context ) => SayfaB() ));
              },
            ),
            Text("isim :${widget.kisi.isim}"),
            Text("yas :${widget.kisi.yas}"),
            Text("boy :${widget.kisi.boy}"),
            Text("bekarmi :${widget.kisi.bekarmi}"),

          ],
        ),
      ),
    );
  }
}
