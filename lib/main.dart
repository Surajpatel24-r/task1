import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome"),
          elevation: 10,
          backgroundColor: const Color.fromARGB(194, 8, 248, 88),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Welcome Suraj"),
        ),
        drawer: const Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
