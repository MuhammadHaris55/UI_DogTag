import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/greatJob.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';
import 'package:flutter_app111/stylingWidgets/textField.dart';

// ignore: camel_case_types
class dogConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Center(
          child: Container(
            padding: EdgeInsets.only(right: screen.width / 8),
            child: Text(
              'Confirmation',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(
                          'images/confirmationPic.png',
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        left: 20.0,
                        child: Text(
                          'I\'m Spike',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screen.width / 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: screen.width / 1.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  R_textFormField('My dog breed is...'),
                  SizedBox(height: 10.0),
                  R_textFormField('Description'),
                  SizedBox(height: 30.0),
                  Text(
                    'Dog details',
                    style: TextStyle(
                      color: themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: screen.width / 18,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  R_textFormField('Size'),
                  SizedBox(height: 20.0),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Boy',
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Your profile is almost complete',
                    style: TextStyle(
                      color: themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: screen.width / 15,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: buttonDesign,
                    child: button_design(screen, "Register"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GreatJob()));
                    },
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
