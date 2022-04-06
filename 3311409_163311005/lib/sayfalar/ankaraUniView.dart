import 'package:flutter/material.dart';

class AnkaraUniView extends StatelessWidget{
  final baslik;
  AnkaraUniView({required this.baslik});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(baslik),),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.school),
                title: Text("Mühendislik Fakültesi"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text("Mimarlık Fakültesi"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text("Sosyal Bilimler Fakültesi"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text("Diş Hekimliği Fakültesi"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}