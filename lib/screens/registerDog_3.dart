import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/dogConfirmation.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';

class registerDog_3 extends StatefulWidget {
  @override
  _registerDog_3State createState() => _registerDog_3State();
}

class _registerDog_3State extends State<registerDog_3> {
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
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              child: Image(
                                image: AssetImage(
                                  'images/UploadDogPic_3.png',
                                ),
                              ),
                              // borderRadius: BorderRadius.circular(25.0),
                              //     boxShadow: [
                              //       BoxShadow(
                              //         color: Colors.shadowColor,
                              //         blurRadius: 5.0,
                              //       ),
                              //     ]),
                              // width: screen.width / 2.7,
                              // height: screen.width / 2.7,
                              // padding: EdgeInsets.symmetric(
                              //     vertical: 10.0, horizontal: 15.0
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => registerDog1()));
                              },
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
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => registerDog1()));
                              },
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

                    // Container(
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: [
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.themeColor,
                    //                 borderRadius: BorderRadius.circular(25.0),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.shadowColor,
                    //                     blurRadius: 5.0,
                    //                   ),
                    //                 ]),
                    //             width: screen.width / 2.7,
                    //             height: screen.width / 2.7,
                    //             padding: EdgeInsets.symmetric(
                    //                 vertical: 10.0, horizontal: 15.0),
                    //             child: Column(
                    //               crossAxisAlignment:
                    //               CrossAxisAlignment.stretch,
                    //               mainAxisAlignment:
                    //               MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Image(
                    //                   image: AssetImage(
                    //                     'images/dog-size.png',
                    //                   ),
                    //                   height: screen.width / 6.0,
                    //                 ),
                    //                 TextButton(
                    //                   onPressed: () {
                    //                     // Navigator.push(context,MaterialPageRoute(builder: (context) => registerDog1()));
                    //                   },
                    //                   child: Text(
                    //                     'Tiny',
                    //                   ),
                    //                   style: ButtonStyle(
                    //                     elevation: MaterialStateProperty.all(3),
                    //                     shadowColor: MaterialStateProperty.all(
                    //                         Colors.shadowColor),
                    //                     backgroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.white),
                    //                     foregroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.black),
                    //                     shape: MaterialStateProperty.all<
                    //                         RoundedRectangleBorder>(
                    //                       RoundedRectangleBorder(
                    //                         borderRadius:
                    //                         BorderRadius.circular(20.0),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.themeColor,
                    //                 borderRadius: BorderRadius.circular(25.0),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.shadowColor,
                    //                     blurRadius: 5.0,
                    //                   ),
                    //                 ]),
                    //             width: screen.width / 2.7,
                    //             height: screen.width / 2.7,
                    //             padding: EdgeInsets.symmetric(
                    //                 vertical: 10.0, horizontal: 15.0),
                    //             child: Column(
                    //               crossAxisAlignment:
                    //               CrossAxisAlignment.stretch,
                    //               mainAxisAlignment:
                    //               MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Image(
                    //                   image: AssetImage(
                    //                     'images/dog-size.png',
                    //                   ),
                    //                   height: screen.width / 6.0,
                    //                 ),
                    //                 TextButton(
                    //                   onPressed: () {
                    //                     // Navigator.push(context,MaterialPageRoute(builder: (context) => registerDog1()));
                    //                   },
                    //                   child: Text(
                    //                     'Small',
                    //                   ),
                    //                   style: ButtonStyle(
                    //                     elevation: MaterialStateProperty.all(3),
                    //                     shadowColor: MaterialStateProperty.all(
                    //                         Colors.shadowColor),
                    //                     backgroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.white),
                    //                     foregroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.black),
                    //                     shape: MaterialStateProperty.all<
                    //                         RoundedRectangleBorder>(
                    //                       RoundedRectangleBorder(
                    //                         borderRadius:
                    //                         BorderRadius.circular(20.0),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 20.0),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: [
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.themeColor,
                    //                 borderRadius: BorderRadius.circular(25.0),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.shadowColor,
                    //                     blurRadius: 5.0,
                    //                   ),
                    //                 ]),
                    //             width: screen.width / 2.7,
                    //             height: screen.width / 2.7,
                    //             padding: EdgeInsets.symmetric(
                    //                 vertical: 10.0, horizontal: 15.0),
                    //             child: Column(
                    //               crossAxisAlignment:
                    //               CrossAxisAlignment.stretch,
                    //               mainAxisAlignment:
                    //               MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Image(
                    //                   image: AssetImage(
                    //                     'images/dog-size.png',
                    //                   ),
                    //                   height: screen.width / 6.0,
                    //                 ),
                    //                 TextButton(
                    //                   onPressed: () {
                    //                     // Navigator.push(context,MaterialPageRoute(builder: (context) => registerDog1()));
                    //                   },
                    //                   child: Text(
                    //                     'Medium',
                    //                   ),
                    //                   style: ButtonStyle(
                    //                     elevation: MaterialStateProperty.all(3),
                    //                     shadowColor: MaterialStateProperty.all(
                    //                         Colors.shadowColor),
                    //                     backgroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.white),
                    //                     foregroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.black),
                    //                     shape: MaterialStateProperty.all<
                    //                         RoundedRectangleBorder>(
                    //                       RoundedRectangleBorder(
                    //                         borderRadius:
                    //                         BorderRadius.circular(20.0),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.themeColor,
                    //                 borderRadius: BorderRadius.circular(25.0),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                     color: Colors.shadowColor,
                    //                     blurRadius: 5.0,
                    //                   ),
                    //                 ]),
                    //             width: screen.width / 2.7,
                    //             height: screen.width / 2.7,
                    //             padding: EdgeInsets.symmetric(
                    //                 vertical: 10.0, horizontal: 15.0),
                    //             child: Column(
                    //               crossAxisAlignment:
                    //               CrossAxisAlignment.stretch,
                    //               mainAxisAlignment:
                    //               MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Image(
                    //                   image: AssetImage(
                    //                     'images/dog-size.png',
                    //                   ),
                    //                   height: screen.width / 6.0,
                    //                 ),
                    //                 TextButton(
                    //                   onPressed: () {
                    //                     // Navigator.push(context,MaterialPageRoute(builder: (context) => registerDog1()));
                    //                   },
                    //                   child: Text(
                    //                     'Big',
                    //                   ),
                    //                   style: ButtonStyle(
                    //                     elevation: MaterialStateProperty.all(3),
                    //                     shadowColor: MaterialStateProperty.all(
                    //                         Colors.shadowColor),
                    //                     backgroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.white),
                    //                     foregroundColor:
                    //                     MaterialStateProperty.all<Color>(
                    //                         Colors.black),
                    //                     shape: MaterialStateProperty.all<
                    //                         RoundedRectangleBorder>(
                    //                       RoundedRectangleBorder(
                    //                         borderRadius:
                    //                         BorderRadius.circular(20.0),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(height: 20.0),
                    //       Align(
                    //         alignment: Alignment.bottomRight,
                    //         child: Container(
                    //           padding: EdgeInsets.only(right: 10.0),
                    //           child: TextButton(
                    //             onPressed: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => Home()));
                    //             },
                    //             child: Text(
                    //               'SKIP',
                    //               style: TextStyle(
                    //                 color: Colors.black,
                    //                 // fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       ElevatedButton(
                    //         style: buttonDesign,
                    //         child: button_design(screen, "NEXT"),
                    //         onPressed: () {
                    //           // Navigator.of(context).pushNamed('/register');
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => registerDog_3()));
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // )
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
