import 'dart:ffi';
import 'dart:html';

import 'package:flutter_application_1/telas/Animais.dart';
import 'package:flutter_application_1/telas/Numeros.dart';
import 'package:flutter_application_1/telas/Vogais.dart';
import 'package:flutter_application_1/telas/Videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController; //controlador de guias

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Ingles"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Animais"),
            Tab(text: "Numeros"),
            Tab(text: "Vogais"),
            Tab(text: "Videos"),
          ],
        ), //estilo da guia quando selecionada
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
          Videos(),
        ],
      ),
    );
  }
}
