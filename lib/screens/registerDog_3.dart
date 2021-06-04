import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/dogConfirmation.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';
import 'package:image_picker/image_picker.dart';

class registerDog_3 extends StatefulWidget {
  @override
  _registerDog_3State createState() => _registerDog_3State();
}

class _registerDog_3State extends State<registerDog_3> {
//FUNCTIONS AND VARIABLES TO CHOOSE AND CLICK IMAGE  AND IT ON FIRESTORE------------ STARTS -----------------------
  File _imageFile;
  final picker = ImagePicker();

  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  Future clickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

//TO UPLOAD IMAGE ON FIRESTORE
  // Future uploadImageToFirebase(BuildContext context) async {
  //   String fileName = basename(_imageFile.path);
  //   StorageReference firebaseStorageRef =
  //       FirebaseStorage,instance.ref().child('uploads/$fileName');
  //   StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
  //   StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  //   taskSnapshot.ref.getDownloadURL().then(
  //   (value) => print("Done: $value"),
  //   );
  // }

//FUNCTIONS AND VARIABLES TO CHOOSE AND CLICK IMAGE  AND IT ON FIRESTORE ------------ ENDS -----------------------

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25.0, right: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Column(
                      children: [
                        Image(
                          width: screen.width / 2.0,
                          image: AssetImage(
                            'images/Dog_Tag-02.png',
                          ),
                        ),
                        Image(
                          image: AssetImage('images/reg_3.png'),
                        ),
                        Text(
                          'steps 3 of 3',
                          style: TextStyle(
                            fontSize: screen.width / 35,
                          ),
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.help), onPressed: () {})
                  ],
                ),
              ),
              Container(
                width: screen.width / 1.1,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Show us what tom \n looks like',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: screen.width / 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: Container(
                        width: screen.width / 1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: shadowColor,
                                //     blurRadius: 5.0,
                                //   ),
                                // ],
                              ),
                              child: _imageFile != null
                                  ? Image.file(
                                      _imageFile,
                                    )
                                  : TextButton(
                                      child: Icon(
                                        Icons.add_a_photo,
                                        size: 50,
                                        color: Colors.black,
                                      ),
                                      onPressed: clickImage,
                                    ),
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: pickImage,
                              //     () {
                              //   // Navigator.push(context, MaterialPageRoute(builder: (context) => registerDog1()));
                              // },
                              child: Text(
                                'Choose from gallery',
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(vertical: 15.0),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(
                                      color: themeColor,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: clickImage,
                              //     () {
                              //   // Navigator.push(context, MaterialPageRoute(builder: (context) => registerDog1()));
                              // },
                              child: Text(
                                'Take a photo',
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(vertical: 15.0)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(
                                      color: themeColor,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(screen, "NEXT"),
                      onPressed: () {
                        // Navigator.of(context).pushNamed('/register');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dogConfirmation()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
