import 'package:flutter/material.dart';

void main() {
  ClassWithUnusedMethod().usedMethod();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}

class ClassWithUnusedMethod {
  void unusedMethod() {
    print('I am unused!');
  }

  void usedMethod() {
    print('I am used!');
  }
}
