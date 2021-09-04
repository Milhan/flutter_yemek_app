import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranYuksekligi = ekranBilgisi.size.height;
    double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                width: ekranGenisligi / 1,
                child: Image.asset("assets/images/ciger.jpg")),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {},
                      child: Yazi("BEĞEN", ekranGenisligi / 25),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {},
                      child: Yazi("YORUM YAP", ekranGenisligi / 25),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ciger",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi / 20),
                  ),
                  SizedBox(height: ekranGenisligi / 50),
                  Row(
                    children: [
                      Yazi("Kömür üstünde", ekranGenisligi / 25),
                      Spacer(),
                      Yazi("01 Eylül", ekranGenisligi / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Yazi(
                  "Listemize ciğer yemekleri içerisinde en çok yapılan bir tarifle başlayabiliriz. Lezzetine doyum olmaz nefis bir arnavut ciğeri yapmak isterseniz tarifimizde yer alan, ciğerleri unlama püf noktasını kaçırmayın! Küp küp kızartılmış patatesler ve çiğden karıştırılan piyazlık soğanlarla enfes Arnavut ciğeri hazırlamak bu tarifle pek de vaktinizi almayacak.",
                  ekranGenisligi / 25),
            )
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;
  Yazi(this.icerik, this.yaziBoyut);
  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziBoyut),
    );
  }
}
