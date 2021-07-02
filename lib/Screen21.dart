import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:look_n_learn/box.dart';

class Screen21 extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Screen21> {

  get _textunderOT{
    return Padding(
      padding: const EdgeInsets.only(top: 5.0,right: 5,left: 25),
      child: SizedBox(
        height: 50,
        width: 350,
        child: Text(
          "It will help us to save your progress and keep us connected with you",
          style: TextStyle(
            color: Color(0xffe5e5e5),
            fontSize: 14,
            fontFamily: "Sen",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
  get _ProfileCreate{
    return Padding(
      padding: const EdgeInsets.only(top: 90.0,right: 125,bottom:5),
      child: Text(
        "Let's Create Profile",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Color(0xff00bfff),
          fontSize: 24,
          fontFamily: "Sen",
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
  get _or{
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        "(OR)",
        style: TextStyle(
          color: Color(0xff00bfff),
          fontSize: 24,
          fontFamily: "Futura",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

get _text {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0,right: 125),
      child: SizedBox(
        width: 206,
        height: 18,
        child: Text(
          "SignUp with Phone Number",
          style: TextStyle(
            color: Color(0xffbcbcbc),
            fontSize: 14,
            fontFamily: "Sen",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
}

// buttons
  get _googleButton {
    return  Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 9),
      child: Container(
        width: 345,
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 345,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffbcbcbc), width: 2, ),
                color: Color(0xff3b3b3b),
              ),
              padding: const EdgeInsets.only(left: 75, right: 18, top: 11, bottom: 9, ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 20,
                    height: 20,
                    child: Stack(
                      children:[
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 16.67,
                              height: 16.67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffffc107),
                              ),
                              padding: const EdgeInsets.only(left: 1, bottom: 2, ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:[
                                  Container(
                                    width: 13.05,
                                    height: 6.46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffff3d00),
                                    ),
                                  ),
                                  SizedBox(height: 0.20),
                                  Container(
                                    width: 8.33,
                                    height: 7.85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff1976d2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2.58,
                          top: 11.69,
                          child: Container(
                            width: 13.01,
                            height: 6.64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff4caf50),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: FlutterLogo(size: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.40),
                  Padding(
                    padding: const EdgeInsets.only(right: 79.0),
                    child: Text(
                      "Sign up With Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9abc05),
                        fontSize: 14,
                        fontFamily: "Futura",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  get _FacebookButton {
    return  Container(
      width: 345,
      height: 40,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 345,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xffbcbcbc), width: 2, ),
              color: Color(0xff3b3b3b),
            ),
            padding: const EdgeInsets.only(left: 75, right: 18, top: 11, bottom: 9, ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 20,
                  height: 20,
                  child: Stack(
                    children:[
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 16.67,
                            height: 16.67,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffffc107),
                            ),
                            padding: const EdgeInsets.only(left: 1, bottom: 2, ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children:[
                                Container(
                                  width: 13.05,
                                  height: 6.46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xffff3d00),
                                  ),
                                ),
                                SizedBox(height: 0.20),
                                Container(
                                  width: 8.33,
                                  height: 7.85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xff1976d2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 2.58,
                        top: 11.69,
                        child: Container(
                          width: 13.01,
                          height: 6.64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff4caf50),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: FlutterLogo(size: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 14.40),
                Padding(
                  padding: const EdgeInsets.only(right: 79.0),
                  child: Text(
                    "Sign up With Facebook",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9abc05),
                      fontSize: 14,
                      fontFamily: "Futura",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  get _emailButton {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: 345,
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 345,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffbcbcbc), width: 2, ),
                color: Color(0xff3b3b3b),
              ),
              padding: const EdgeInsets.only(left: 75, right: 18, top: 11, bottom: 9, ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 20,
                    height: 20,
                    child: Stack(
                      children:[
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 16.67,
                              height: 16.67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffffc107),
                              ),
                              padding: const EdgeInsets.only(left: 1, bottom: 2, ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:[
                                  Container(
                                    width: 13.05,
                                    height: 6.46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffff3d00),
                                    ),
                                  ),
                                  SizedBox(height: 0.20),
                                  Container(
                                    width: 8.33,
                                    height: 7.85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff1976d2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2.58,
                          top: 11.69,
                          child: Container(
                            width: 13.01,
                            height: 6.64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff4caf50),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: FlutterLogo(size: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14.40),
                  Padding(
                    padding: const EdgeInsets.only(right: 79.0),
                    child: Text(
                      "Sign up With Email",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff9abc05),
                        fontSize: 14,
                        fontFamily: "Futura",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }





  get _button{
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Container(
        width: 450,
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 345,
              height: 40,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 345,
                    height: 40,
                    child: Material(
                      color: Color(0xff00bfff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children:[

                          SizedBox(
                            width: 345,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sign-up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff212121),
                                  fontSize: 14,
                                  fontFamily: "Futura",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xff212121),
     body:

     //container (name + phone)
     Column(
       children: [
         _ProfileCreate,
         _textunderOT,
         _text,
         Padding(
           padding: const EdgeInsets.only(top:15.0,bottom: 100,left: 25, right: 0 ),
           child: Container (
               height: 101,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xff3b3b3b),
                border: Border.all(color: Colors.white70, width: 1.5),
              borderRadius: BorderRadius.circular(8),
    boxShadow: [
    BoxShadow(color: Color(0xff212121), spreadRadius: 0.5),
    ],
    ),

    child: Column(
              children: [

                SizedBox(
                  width: 360.0,
                  height: 50.0,
                  child: Column(
                    children: [

                       Padding(
                         padding: const EdgeInsets.only(top: 15.0, right: 210),
                         child: Text(
                           "Name",
                           style: TextStyle(
                             color: Color(0x87bcbcbc),
                             fontSize: 18,
                             fontFamily: "Sen",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                    ],
                  ),

                ),
            Container(
                  height: 1,
                  color: Colors.white70,
                ),

                SizedBox(
                  width: 360.0,
                  height: 40.0,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, right: 120),
                        child:  Text(
                        "Verification code",
                        style: TextStyle(
                          color: Color(0x87bcbcbc),
                          fontSize: 18,
                          fontFamily: "Sen",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ),
                    ],
                  ),

                ),
                _button,
                _or,
                _googleButton,
                _emailButton,
                _FacebookButton,
    ]

           ),
           ),
         ),
       ],

     ),
    );

    
  }
}



