// ChangeNotifierProvider

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_learnprovider/TodoList.dart';
import 'package:todoapp_learnprovider/TodoListModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoListModel>(
      create: (context) => TodoListModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: TodoList(),
        ),
      ),
    );
  }
}
