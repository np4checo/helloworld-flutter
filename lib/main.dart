import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
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
          Resposta('Resposta 1', _responder),
          Resposta('Resposta 2', _responder),
          Resposta('Resposta 3', _responder)
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
