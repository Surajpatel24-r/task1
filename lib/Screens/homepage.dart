import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/Screens/login_signup/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = "";

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        elevation: 10,
        backgroundColor: const Color.fromARGB(194, 8, 248, 88),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              icon: Icon(Icons.logout))

          // PopupMenuButton(
          //     itemBuilder: (context) => [
          //           const PopupMenuItem(child: Text('Restart')),
          //           const PopupMenuItem(child: Text('New Group')),
          //           const PopupMenuItem(child: Text('New Broadcast')),
          //           const PopupMenuItem(child: Text('Linked devices')),
          //           const PopupMenuItem(child: Text('Exit')),
          //         ]),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Text("Welcome $_username "),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
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
    );
  }

  void getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    _username = prefs.getString('username') as String;
  }
}
