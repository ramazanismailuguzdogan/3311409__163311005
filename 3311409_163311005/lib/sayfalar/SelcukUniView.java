import 'package:flutter/material.dart';

class SelcukUniView extends StatelessWidget{
  final baslik;
  SelcukUniView({required this.baslik});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(baslik),),
    );
  }
}