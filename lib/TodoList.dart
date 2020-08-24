// Consumer

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_learnprovider/TodoListModel.dart';

class TodoList extends StatelessWidget {
  final TextEditingController t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // now I will make an instance named "todos" if TodoListModel class
    // todos is the instance of the class TodoListModel
    TodoListModel todos = Provider.of<TodoListModel>(context);

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: todos.allTasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos.allTasks[index].taskTitle),
                    trailing: FlatButton(
                      onPressed: () {
                        todos.deleteTask(todos.allTasks[index]);
                      },
                      child: Text('DONE'),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: t1,
                  ),
                ),
                RaisedButton(
                  child: Text('ADD'),
                  onPressed: () {
                    todos.addTask(
                      Task(taskTitle: t1.text),
                    );
                    t1.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
