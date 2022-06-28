import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/Screens/homepage.dart';
import 'package:task1/Screens/profile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('Flutter Card Example')),
          body: Center(
            child: Container(
              width: 400,
              height: 180,
              padding: new EdgeInsets.all(5.0),
              // Using a Gradient Colors in Container Block
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(colors: [Colors.blue, Colors.red],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter)),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Color.fromARGB(195, 177, 227, 89),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      minVerticalPadding: 17,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cecbilaspur.ac.in/wp-content/uploads/2020/02/Engineering-1.png"),
                        radius: 22,
                      ),
                      title:
                          Text('Suraj Patel', style: TextStyle(fontSize: 25.0)),
                      subtitle: Text(
                        'Branch:-\nComputer Science',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Profile'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(),
                                ));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Exit'),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
