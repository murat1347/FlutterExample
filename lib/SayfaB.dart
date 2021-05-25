import 'package:flutter/material.dart';
import 'package:muratapp/main.dart';

class SayfaB extends StatefulWidget {
  @override
  _SayfaBState createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SAYFA B"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:(){
            print("app bar geri tusu tiklandi");
            Navigator.push(context, MaterialPageRoute(builder: (context ) => Anasayfa() ));
          }

        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Geldiğin yere dön"),
              onPressed: () {
              Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text("AnaSayfa geç"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context ) => Anasayfa() ));
              },
            ),
            RaisedButton(
              child: Text("AnaSayfa dön"),
              onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              },
            )
          ],
        ),
      ),
    );
  }
}
