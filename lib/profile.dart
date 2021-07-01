import 'package:flutter/material.dart';

import 'home.dart';

class profile extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 10,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => home()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.home,
                                size: 40,
                                color: Colors.white,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 40,
                                color: Colors.white,
                              ),
                              Text("Profile",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: InkWell(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 40,
                                color: Colors.white,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
                color: Colors.grey,
                ))
      ]),
    );
  }
}
