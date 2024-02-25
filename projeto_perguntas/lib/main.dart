// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var perguntas = [];
  void _responder() {
    setState(() {
      if (perguntaSelecionada.bitLength < perguntas.length - 1) {
        perguntaSelecionada++;
      } else {
        perguntaSelecionada = 0;
      }
    });
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      },
    ];

    List<Widget> respostas = [];

    for (var resp in perguntas[perguntaSelecionada]['respostas'] as List) {
      respostas.add(Resposta(resp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto'] as String),
            ...respostas,
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
