import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
              ),
            ),
            Container(
              child: Card(
                color: Colors.blue,
                child: Text('Lista de Transações'),
              ),
            ),
          ]),
    );
  }
}
