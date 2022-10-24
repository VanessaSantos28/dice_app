import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade800,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numeroDadoDireito = 2;
  int numeroDadoEsquerdo = 5;

  void mudancaDaFaceDado() {
    setState(() {
      numeroDadoEsquerdo = Random().nextInt(6) + 1;
      numeroDadoDireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                mudancaDaFaceDado();
              },
              child: Image.asset('images/dice$numeroDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                mudancaDaFaceDado();
              },
              child: Image.asset('images/dice$numeroDadoDireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
