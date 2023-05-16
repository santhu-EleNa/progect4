import 'package:flutter/material.dart';
class project extends StatefulWidget {
  const project({Key? key}) : super(key: key);

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.MBlOJPg-beF5E6q2yR5k9gHaLH&pid=Api&P=0')),
        )
      )
    );
  }
}
