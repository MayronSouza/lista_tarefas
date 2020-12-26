import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Lista de Tarefas',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
        backgroundColor: Colors.cyan[500],
      ),
    );
  }
}
