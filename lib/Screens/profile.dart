import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/Screens/Models/cardmodel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Marked Fool",
          ),
        ),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) => Card(
          elevation: 10,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.blue, width: 3),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: CircleAvatar(
                    radius: 59,
                    backgroundImage: NetworkImage(
                      dataList[index].image,
                    ),
                  ),
                  radius: 62,
                  backgroundColor: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    dataList[index].name,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.star_half_outlined,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blue,
                          side: BorderSide(
                            width: 1,
                            color: Colors.blue,
                          ),
                        ),
                        child: Text(
                          "Read Me",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Text(
                        "Give Openion",
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    ));
  }
}
