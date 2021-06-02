import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          title: Center(child: Text("My Profile")),
          backgroundColor: appbarColor,
          actions: [
            IconButton(
                icon: Icon(Icons.edit), color: themeColor, onPressed: () {})
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            //     child: Stack(
            //       children: [
            //         Column(
            //           children: [
            //             Image(
            //               image: AssetImage('images/My_profile.png'),
            //             ),
            //             SizedBox(height: screen.height/8.0,),
            //             Container(
            //               height: screen.height/2.0,
            //               width: screen.width/1.2,
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: screen.width/15.0)),
            //
            //             SizedBox(height:10.0),
            //             Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
            //                 "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ninisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //
            //         ),
            // Positioned(
            //     top: screen.height/2.5,
            //     left: screen.width/13.0,
            //     child: Container(
            //       margin: EdgeInsets.only(bottom: 40.0),
            //       padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(25.0),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.shadowColor,
            //               blurRadius: 5.0,
            //             ),
            //           ]),
            //       width: screen.width / 1.2,
            //       height: screen.width / 3.2,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Row(
            //             children: [
            //               Text(
            //                 'Spike',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: screen.width / 18,
            //                 ),
            //               ),
            //               Spacer(),
            //               Image(
            //                 image: AssetImage(
            //                   'images/male-icon.png',
            //                 ),
            //               ),
            //             ],
            //           ),
            //           SizedBox(height: 10.0),
            //           Container(
            //             width: screen.width / 1.3,
            //             child: Text(
            //               'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
            //               'tempor invidunt ut labore '
            //               // 'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
            //               // 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
            //               ,
            //               style: TextStyle(
            //                 fontSize: screen.width / 32,
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 20.0),
            //         ],
            //       ),
            //     ),
            // ),
            //       ],
            //     ),
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/My_profile.png'),
                ),
                // SizedBox(height: screen.height/8.0,),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screen.width / 1.4,
                        ),
                        Container(
                          // margin: EdgeInsets.only(bottom: 40.0),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                              boxShadow: [
                                BoxShadow(
                                  color: shadowColor,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          width: screen.width / 1.2,
                          height: screen.width / 3.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Spike',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screen.width / 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Image(
                                    image: AssetImage(
                                      'images/male-icon.png',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: screen.width / 1.3,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
                                  'tempor invidunt ut labore '
                                  // 'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                                  // 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
                                  ,
                                  style: TextStyle(
                                    fontSize: screen.width / 32,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: screen.width / 1.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screen.width / 15.0)),
                              SizedBox(height: 10.0),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                                "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ninisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Positioned(
                //   top: screen.height/2.5,
                //   left: screen.width/13.0,
                //   child:
                // ),
              ],
            ),
          ),
        )
        // body: Stack(
        //   children: [
        //     Align(
        //       alignment: Alignment.bottomCenter,
        //       child: Container(
        //         padding: EdgeInsets.only(top: screen.height / 1.8),
        //         child: Center(
        //           child: Container(
        //             width: screen.width / 1.1,
        //             // height: screen.height / 2,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //
        //                 Text(
        //                   'Description',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: screen.width / 20,
        //                   ),
        //                 ),
        //                 SizedBox(height: 10.0),
        //                 Text(
        //                   'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut '
        //                   'labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores '
        //                   // 'et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. '
        //                   // 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut '
        //                   // 'labore et dolore magna aliquyam erat, sed diam'
        //                   ,
        //                   style: TextStyle(
        //                     fontSize: screen.width / 25,
        //                   ),
        //                 ),
        //                 Spacer(),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.only(top: 20.0),
        //       child: Image(
        //         image: AssetImage(
        //           'images/My_profile.png',
        //         ),
        //       ),
        //     ),
        //     Align(
        //       alignment: Alignment.center,
        //       child: Container(
        //         margin: EdgeInsets.only(top: 55.0),
        //         padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        //         decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(25.0),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.shadowColor,
        //                 blurRadius: 5.0,
        //               ),
        //             ]),
        //         width: screen.width / 1.1,
        //         height: screen.width / 2.9,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //               children: [
        //                 Text(
        //                   'Spike',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: screen.width / 18,
        //                   ),
        //                 ),
        //                 Spacer(),
        //                 Image(
        //                   image: AssetImage(
        //                     'images/male-icon.png',
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             SizedBox(height: 10.0),
        //             Container(
        //               width: screen.width / 1.3,
        //               child: Text(
        //                 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
        //                 'tempor invidunt ut labore '
        //                 // 'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
        //                 // 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
        //                 ,
        //                 style: TextStyle(
        //                   fontSize: screen.width / 32,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(height: 20.0),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Container(
        //       color: Colors.black,
        //       padding: EdgeInsets.only(
        //         left: 10.0,
        //         right: 10.0,
        //         top: 30.0,
        //         bottom: 20.0,
        //       ),
        //       child: Row(
        //         children: [
        //           IconButton(
        //               icon: Icon(
        //                 Icons.arrow_back_ios,
        //                 color: Colors.white,
        //               ),
        //               onPressed: () {
        //                 Navigator.of(context).pop();
        //               }),
        //           SizedBox(width: 90.0),
        //           Text(
        //             'My profile',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 18.0,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
