import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/profile.dart';
import 'package:gp/lectures.dart';
import 'QR Generator/QRGenerator.dart';
import 'add_lecture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desktop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 20 / 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blueGrey, Color.fromRGBO(0, 51, 51, 1)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home_filled,
                          color: Colors.white,
                        ),
                        label: Text("Home",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        label: Text("Profile",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.all_inbox,
                          color: Colors.white,
                        ),
                        label: Text("Subjects",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("SignOut",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 80 / 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.white24),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(30),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QRGenerator()));
                  },
                  child: Text(
                    "Create QR Code",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white24),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(30),
                      )),
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 180, width: MediaQuery.of(context).size.width*0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'Enter The Quiz',
                                  style: Theme.of(context).textTheme.headline,textAlign: TextAlign.center,
                                ),
                                TextField(),
                                SizedBox(height: 20,),
                                ElevatedButton(
                                  child: Text('submit'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20)
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Add Pop Quiz",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white24),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(30),
                      )),
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                              height: 180, width: MediaQuery.of(context).size.width*0.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    'Enter The ID',
                                    style: Theme.of(context).textTheme.headline,textAlign: TextAlign.center,
                                  ),
                                  TextField(
                                  ),
                                  SizedBox(height: 20,),
                                  ElevatedButton(
                                    child: Text('submit'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20)
                          ),
                        );
                      },
                    );

                  },
                  icon: Icon(Icons.add_box, color: Colors.black),
                  label: Text(
                    "Add Manually",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
