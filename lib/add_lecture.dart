import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp/lectures.dart';
import 'QR Generator/QRGenerator.dart';
import 'add_lecture.dart';
import 'home.dart';

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
                backgroundImage: NetworkImage(
                    'data:image/png;base64,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'),

                radius: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => home()));
                        },
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
