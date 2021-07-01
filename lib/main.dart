import 'package:flutter/material.dart';
import 'package:gp/home.dart';
import 'package:qr_flutter/qr_flutter.dart';


void main() {
  runApp(MaterialApp(home: home()));
}
// ignore: camel_case_types
/*class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            size: 200.0,
          ),
        ),
      ),
    );
  }
}*/

