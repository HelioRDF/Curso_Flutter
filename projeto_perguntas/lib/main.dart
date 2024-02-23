// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void _responder() {
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
            Resposta('Resposta 01',_responder),
            Resposta('Resposta 02',_responder),
            Resposta('Resposta 03',_responder),
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
