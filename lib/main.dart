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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': ['Preto', 'Verde', 'Azul', 'Vermelho']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': ['Cachorro', 'Gato', 'Coelho', 'Pássaros']
      },
      {
        'texto': 'Qual é a sua comida favorita?',
        'resposta': ['Macarrão', 'Escondidinho', 'Fricassê', 'Bife acebolado']
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Questionário")),
      ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'] as String),
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
