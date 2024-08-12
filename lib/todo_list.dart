import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/models/todo_model.dart';
import 'package:todo_bloc/todo_cubit/todo_cubit.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(
          context,
          "/add_todo",
        ),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              Todo todo = state[index];
              return ListTile(
                title: Text(todo.name),
                subtitle: Text("${todo.createdAt}"),
              );
            },
          );
        },
      ),
    );
  }
}
