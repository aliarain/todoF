import 'package:flutter/material.dart';
import 'package:todoflutter/widgets/widgets.dart';
class HomePage extends StatefulWidget {
  final String username;
  final String userEmail;

  HomePage({ this.username, this.userEmail });


  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets().mainAppBar(),
      body: Container(
        child: Text('username ${widget.username}')
      ),
    );
  }
}