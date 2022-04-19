// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Annihilator",
    "Anomaly",
    "Arbitrage",
    "Team Arsenic",
    "Alien Abyss",
    "Agitator",
    "Agony",
    "Agrippa",
    "Albatross",
    "Amaretto",
    "Amazon",
    "Courtesy flush",
    "Unique Identity",
    "Ambush",
    "Angon",
    "Animus Stream",
    "Elements",
    "Core",
    "Philosophies",
    "Given",
    "Moment",
    "Relative Performance"
  ];

  var _fraseGerada = "Clique abaixo para gerar um Nickname!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nicknames Aleatórios"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://cdn.pixabay.com/photo/2012/11/03/06/23/road-sign-63983__340.jpg",
                fit: BoxFit.cover,
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "Novo Nick",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.red,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
