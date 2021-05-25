import 'package:flutter/material.dart';
import 'package:muratapp/Kisiler.dart';
import 'package:muratapp/SayfaA.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {



  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ANASAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          RaisedButton(
           child: Text("Sayfa A Git"),
            onPressed: (){
             var kisi = Kisiler(isim:"ahmet",yas:18,boy:1.78,bekarmi:false,);
              Navigator.push(context, MaterialPageRoute(builder: (context ) => SayfaA(kisi: kisi,) ));
            },
            )
        ]
        ),
      ),
    );
  }
}

