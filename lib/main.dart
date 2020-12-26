import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    title: 'Lista de Tarefas',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
        backgroundColor: Colors.cyan[500],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 8.0, 2.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nova Tarefa',
                      labelStyle: TextStyle(color: Colors.cyan),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.cyan,
                  child: Text('ADD'),
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Função que busca o arquivo
  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/data.json');
  }

  // Função que salva no arquivo
  Future<File> _saveData() async {
    String data = json.encode(_todoList);
    final file = await _getFile();

    return file.writeAsString(data);
  }

  // Função que lê o arquivo
  Future<String> _readData() async {
    try {
      final file = await _getFile();

      file.readAsString();
    } catch (e) {
      return 'Error: $e';
    }
  }
}
