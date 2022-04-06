import 'package:flutter/material.dart';
import 'package:untitled/sayfalar/ankaraUniView.dart';
import 'package:untitled/sayfalar/erciyesUniView.dart';
import 'package:untitled/sayfalar/karamanogluView.dart';
import 'package:untitled/sayfalar/selcukUniView.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Uygulama Ödevi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:15 ),
            child: Icon(Icons.help),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.school),
            SizedBox(width: 5,),
            Center(child: Text("Üniversiteler"))
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            children: [
              ListTile(
                leading: Image.network(
                  "https://seeklogo.com/images/S/Sel__uk___niversitesi__By_Burak_K__seler_-logo-7748D79736-seeklogo.com.png",
                  height: 50,
                ),
                title: Text("Selçuk Üniversitesi"),
                subtitle: Text("Mekan Konya"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SelcukUniView(baslik: "Selçuk Üniversitesi Fakülteler")
                      ));
                },
              ),
              ListTile(
                leading: Image.network(
                  "https://upload.wikimedia.org/wikipedia/tr/0/08/Erciyes_%C3%9Cniversitesi_logo.png",
                  height: 60,
                ),
                title: Text("Erciyes Üniversitesi"),
                subtitle: Text("Mekan Kayseri"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ErciyesUniView(baslik: "Erciyes Üniversitesi Fakülteleri",)));},
              ),
              ListTile(
                leading: Image.network(
                  "https://upload.wikimedia.org/wikipedia/tr/archive/5/5f/20200406212436%21Ankara_%C3%9Cniversitesi_logosu.png",
                  height: 60,
                ),
                title: Text("Ankara Üniversitesi"),
                subtitle: Text("Mekan Ankara"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AnkaraUniView(baslik: "Ankara Üniversitesi Fakülteleri",)));},
              ),
              ListTile(
                leading: Image.network(
                  "https://dosya.kmu.edu.tr/kmu/userfiles/images/2019/KMU_LOGO_TR.jpg",
                  height: 60,
                ),
                title: Text("Karamanoğlu Mehmet Bey Üniversitesi"),
                subtitle: Text("Mekan Karaman"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => KaramanogluUniView(baslik: "Karamanoğlu Mehmet Bey Üniversitesi Fakülteleri",)));},
              )
            ],
          ),
        ),
      ),
    );
  }
}



