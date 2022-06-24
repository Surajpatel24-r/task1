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
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: const Center(
          child: Text("Welcome Suraj"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 198, 9),
                ),
                child: CircleAvatar(
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 140,
                  ),
                  backgroundColor: Color.fromARGB(234, 123, 34, 56),
                ),
              ),
              ListTile(
                title: Center(child: Text('Pyments')),
              ),
              ListTile(
                title: Center(child: Text('Visitors')),
              ),
              ListTile(
                title: Center(child: Text('Credits')),
              ),
              ListTile(
                title: Center(child: Text('Edit')),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
