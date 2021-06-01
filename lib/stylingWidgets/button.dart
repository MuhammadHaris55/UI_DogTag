import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container button_design(screen, String text) {
  return Container(
    height: 58,
    // height: MediaQuery.of(context).size.height / 10,
    width: screen.width / 1.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment(0.0, -1.0),
        end: Alignment(0.0, 2.71),
        stops: [0.0, 1.0],
        colors: [
          Colors.themeColor,
          Colors.white,
        ],
      ),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

//USING THIS FOR STYLING
final ButtonStyle buttonDesign = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

ButtonStyle uttonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
