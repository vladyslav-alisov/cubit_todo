import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/todo_cubit/todo_cubit.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  String title = "";

  TodoCubit get _todoCubit => context.read<TodoCubit>();

  _onAddPress() {
    _todoCubit.addTodo(title.trim());
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text("Title"),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) => title = value,
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: _onAddPress,
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
