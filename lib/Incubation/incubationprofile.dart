import 'package:flutter/material.dart';

class IncubationProfile extends StatefulWidget {
  @override
  _IncubationProfileState createState() => _IncubationProfileState();
}

class _IncubationProfileState extends State<IncubationProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.person,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.edit),
                          border: OutlineInputBorder(),
                          hintText: 'Edit Email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.edit),
                          border: OutlineInputBorder(),
                          hintText: 'Change Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height*0.1,
                          child: Center(
                            child: Text(
                              'Notifications',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height*0.1,
                          child: Center(
                            child: Text(
                              'ShareApp',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
