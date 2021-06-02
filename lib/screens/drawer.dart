import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';

class rawer extends StatelessWidget {
  static String pageTitle = "Drawer";
  static String routeName = "/drawer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sdfjkgn"),
      ),
      drawer: Drawer(),
      body: Container(
        color: themeColor,
        child: Column(
          children: [
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
