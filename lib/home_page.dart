import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:untitled/sliver_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Speed dial"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SliverPage.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
        centerTitle: true,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // overlayColor: Colors.black,
        // overlayOpacity: 0.5,
        onOpen: () {
          print("Speed dial opened");
        },
        onClose: () {
          print("Speed dial closed");
        },
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.accessibility),
              backgroundColor: Colors.blue,
              label: "First",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () {
                print("First is pressed");
              }),
          SpeedDialChild(
              child: Icon(Icons.brush),
              backgroundColor: Colors.green,
              label: "Second",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () {
                print("Second is pressed");
              }),
          SpeedDialChild(
              child: Icon(Icons.keyboard_voice),
              backgroundColor: Colors.pink,
              label: "Third",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () {
                print("Third is pressed");
              }),
          SpeedDialChild(
              child: Icon(Icons.camera),
              backgroundColor: Colors.yellow,
              label: "Fourth",
              labelStyle: TextStyle(fontSize: 18),
              onTap: () {
                print("Fourth is pressed");
              }),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
