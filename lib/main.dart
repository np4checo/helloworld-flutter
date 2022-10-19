import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatefulWidget {
  final String nome = 'Natan';
  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  int salario = 1250;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'O salário é certo de ${widget.nome} é de ${salario}',
        style: TextStyle(fontSize: 30),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
