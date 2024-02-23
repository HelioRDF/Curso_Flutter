// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida');
  }
    void voltar() {
    setState(() {
      perguntaSelecionada--;
    });
    print('Voltou!');
  }
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = ['Cor favorita', 'Animal Favorito', 'Comida favorita', "Atividade Favorita"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
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
            ElevatedButton(
                onPressed: voltar,
                child: const Text('Voltar')),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
