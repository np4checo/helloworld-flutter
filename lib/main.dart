import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  var _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual seu animal favorito?',
      'Qual sua cor favorita?',
      'Qual sua comida favorita?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Questionário")),
      ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]),
          ElevatedButton(
            onPressed: _responder,
            child: const Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: _responder,
            child: const Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: _responder,
            child: const Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
