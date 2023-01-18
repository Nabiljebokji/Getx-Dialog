// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "This title",
                  titleStyle:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  middleText: "this is middleText",
                  middleTextStyle: TextStyle(color: Colors.green),
                  textCancel: "Cancel",
                  onCancel: () {
                    print("${Get.isDialogOpen}");
                    print("Cancel Action");
                  },
                  textConfirm: "Confirm",
                  onConfirm: () {
                    print("${Get.isDialogOpen}");
                    print("Confirm Action");
                  },
                );
              },
              child: Text("normal Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "This title",
                  titleStyle:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  middleText: "Action for the buttons",
                  middleTextStyle: TextStyle(color: Colors.green),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          print("${Get.isDialogOpen}");
                        },
                        child: Text("Ok")),
                    ElevatedButton(
                        onPressed: () {
                          print("${Get.isDialogOpen}");
                        },
                        child: Text("Delete")),
                    ElevatedButton(
                        onPressed: () {
                          print("${Get.isDialogOpen}");
                        },
                        child: Text("Delete")),
                  ],
                );
              },
              child: Text("custom Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "This title",
                  titleStyle:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  //we can ues content insted of middleText
                  content: Column(
                    children: [
                      Text(
                        "with content we can do a customize widgit",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Name"),
                      ),
                    ],
                  ),
                  //we can ues canel insed of TextCancel and onCancel it gives us more flex to customize
                  cancel: InkWell(
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.green),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  onCancel: () {
                    print("cancel Action");
                  },
                  textConfirm: "Confirm",
                );
              },
              child: Text("custom Dialog 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("${Get.isDialogOpen}");
              },
              child: Text("check on dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
