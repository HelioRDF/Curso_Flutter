// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = ['Cor favorita', 'Animal Favorito'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
                onPressed: responder, child: const Text('Resposta 1')),
            ElevatedButton(
                onPressed: () => print('Pergunta respondida 2'),
                child: const Text('Resposta 2')),
            ElevatedButton(
                onPressed: () {
                  print('Pergunta respondida 3');
                },
                child: const Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
