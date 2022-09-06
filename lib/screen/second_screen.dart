import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/main.dart';

class Second_screen extends StatefulWidget {
  const Second_screen({super.key});

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  List myList = ["Orange", "Apple", "Mango"];
  String selctedItem = "Orange";
  String fontStyle = "DancingScript";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.lime[800],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "second screen",
                style: TextStyle(
                    fontFamily: fontStyle, fontSize: 20, color: Colors.white),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
                        },
                      ));
                    });
                  },
                  icon: Icon(Icons.home),
                  label: Text(
                    "home screen",
                    style: TextStyle(fontFamily: fontStyle, fontSize: 20),
                  )),
              DropdownButton(
                items: myList
                    .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          "$e",
                          style: TextStyle(fontFamily: fontStyle, fontSize: 20),
                        )))
                    .toList(),
                value: selctedItem,
                onChanged: (value) {
                  setState(() {
                    selctedItem = value.toString();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
