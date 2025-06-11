import 'package:flutter/material.dart';
import 'package:todo_app/pages/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCalcel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCalcel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.deepPurple[200],
        content: Container(
          height: 120,
          child: Column(
            children: [
              //get user input
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new task",
                    hintStyle: TextStyle(color: Colors.blueGrey)),
              ),

              //button --> save button and cancel button
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //save button
                    MyButton(text: "Save", onPressed: onSave),
                    //get gap in between save and cancel button
                    const SizedBox(
                      width: 6,
                    ),

                    //cancel button
                    MyButton(text: "Cancel", onPressed: onCalcel),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
