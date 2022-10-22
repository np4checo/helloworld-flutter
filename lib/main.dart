import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  void responder() {
    setState(() {
        perguntaSelecionada++;
      };

    print(perguntaSelecionada);
  }

  var perguntaSelecionada = 0;

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
          Text(perguntas[perguntaSelecionada],
              style: const TextStyle(fontSize: 40)),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: const Text('Resposta 3'),
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
