import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Par ou Ímpar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Par ou Ímpar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var numero = Random().nextInt(2);
  var resultado = '';


  parOuImpar(parouimpar) {
    setState(() {
      if (numero % 2 == 0) {
        if (parouimpar == 'par'){
          resultado = 'Você ganhou';
        } else {
          resultado = 'Você perdeu';
        }
      }
      else {
        if (parouimpar == 'impar'){
            resultado = 'Você perdeu';
          } else {
            resultado = 'Você ganhou';
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$numero',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$resultado',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: parOuImpar('par'), 
                  child: const Text('PAR'),
                ),
                ElevatedButton(
                  onPressed: parOuImpar('impar'), 
                  child: const Text('ÍMPAR'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
