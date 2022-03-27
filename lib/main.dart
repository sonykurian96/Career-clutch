import 'package:flutter/material.dart';
import 'package:gaya/career.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Career(),
    );
  }
}

class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        body: Column(
          children: [
            Container(
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                color: Colors.white,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      logo(),
                      trending(),
                      trending(),
                       Center(child:IconButton(
                         onPressed: (){},
                          icon: Icon(Icons.account_circle, size: 30,)
                          ))
                      ]),
              ),
            ),
          ],
        ));
  }
}

Widget logo() {
  return Center(widthFactor: 2, child: Text("Clutch"));
}

Widget trending() {
  return Center(
    widthFactor: 1.5,
    child: Text("Trending career"));
}
