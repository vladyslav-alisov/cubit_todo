import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/add_todo_page.dart';
import 'package:todo_bloc/todo_cubit/todo_cubit.dart';
import 'package:todo_bloc/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        routes: {
          "/": (_) => const TodoList(),
          "/add_todo": (_) => const AddTodoPage(),
        },
      ),
    );
  }
}
