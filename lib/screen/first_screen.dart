import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_5/main.dart';

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  List myList = ["Orange", "Apple", "Mango"];
  String selctedItem = "Orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("First screen"),
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
                  label: Text("home screen")),
              DropdownButton(
                items: myList
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
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
