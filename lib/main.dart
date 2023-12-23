import 'package:flutter/material.dart';
import './student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 36, 133, 218)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Student> students = [
    Student(id: "1", name: "Willy", age: 20, date: DateTime.now()),
    Student(id: "2", name: "Bowo", age: 20, date: DateTime.now()),
    Student(id: "3", name: "Yola", age: 18, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('List View'),
      ),
      body: ListView(
        children: students.map((st) {
          return Card(
            child: Row(
              children: [Text(st.name)],
            ),
          );
        }).toList(),
      ),
    );
  }
}
