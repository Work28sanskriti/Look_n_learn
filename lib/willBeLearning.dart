// import 'dart:io';
//
// import 'package:flutter/material.dart';
//
//
// class WillBeLearning extends StatefulWidget {
//   @override
//   _willBeLearning createState() => _willBeLearning();
// }
//
// class _willBeLearning extends State<WillBeLearning> with SingleTickerProviderStateMixin {
//   // Constants
//   final int time = 30;
//   late AnimationController _controller;
//
//   // Variables
//   late Size _screenSize;
//   late int _currentDigit;
//   int _firstDigit;
//   int _secondDigit;
//   int _thirdDigit;
//   int _fourthDigit;
//
//   // Timer timer;
//   int totalTimeInSeconds;
//   bool _hideResendButton;
//
//   String userName = "";
//   bool didReadNotifications = false;
//   int unReadNotificationsCount = 0;
//
//   // Returns "Appbar"
//   get _getAppbar {
//     return new AppBar(
//       backgroundColor: Color(0xff212121),
//       title: Stack(
//         children: <Widget>[
//           Container(
//             width: double.infinity,
//             color: Colors.red,
//           ),
//           Container(
//             width: 307,
//             height: 16,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(7),
//               color: Color(0xff9abc05),
//             ),
//           ),
//         ],
//       ),
//
//
//     );
//   }
//
//   get _iWillBeLearinigText{
//     return Text(
//       "I will be Learning...",
//       style: TextStyle(
//         color: Color(0xff00bfff),
//         fontSize: 24,
//         fontFamily: "Sen",
//         fontWeight: FontWeight.w700,
//       ),
//     );
//   }
//
//   get _learningChoise{
//     return Container(
//       width: 337,
//       height: 118,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(7),
//         border: Border.all(color: Color(0xffbcbcbc), width: 1, ),
//         color: Color(0xff3b3b3b),
//       ),
//       child: Stack(
//         children:[
//           Positioned(
//             left: 50,
//             top: 6,
//             child: SizedBox(
//               width: 140,
//               height: 39,
//               child: Text(
//                 "GRE Vocabulary",
//                 style: TextStyle(
//                   color: Color(0xffbcbcbc),
//                   fontSize: 18,
//                   fontFamily: "Sen",
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 50,
//             top: 46,
//             child: SizedBox(
//               width: 171,
//               height: 38,
//               child: Text(
//                 "General Vocabulary",
//                 style: TextStyle(
//                   color: Color(0xffbcbcbc),
//                   fontSize: 18,
//                   fontFamily: "Sen",
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 50,
//             top: 85,
//             child: SizedBox(
//               width: 119,
//               height: 39,
//               child: Text(
//                 "In the Oven...",
//                 style: TextStyle(
//                   color: Color(0x99bcbcbc),
//                   fontSize: 18,
//                   fontFamily: "Sen",
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 15,
//             top: 12,
//             child: Container(
//               width: 15,
//               height: 15,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xffbcbcbc),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 15,
//             top: 51,
//             child: Container(
//               width: 15,
//               height: 15,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xffbcbcbc),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 15,
//             top: 90,
//             child: Container(
//               width: 15,
//               height: 15,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Color(0xff888888),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   get _continueButton{
//     return  Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(12.0),
//       color: Color(0xff00bfff),
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 30.0),
//         onPressed: () {
//           //On Press Handler
//         },
//         child: Text("Let's Learn",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color:Color(0xff212121),
//               fontSize: 14.0,
//               fontFamily: "Futura",
//               fontWeight: FontWeight.w700,)),
//       ),
//     );
//   }
//   // Return "Verification Code" label
//   get _getVerificationCodeLabel {
//     return new Text(
//       "Verification Code",
//       textAlign: TextAlign.center,
//       style: new TextStyle(
//           fontSize: 28.0, color: Color(0xffbcbcbc), fontWeight: FontWeight.bold),
//     );
//   }
//
//   // Return "Email" label
//   get _getEmailLabel {
//     return new Text(
//       "Please enter the OTP sent\non your Phone Number.",
//       textAlign: TextAlign.center,
//       style: new TextStyle(
//           fontSize: 18.0, color: Color(0xffbcbcbc), fontWeight: FontWeight.w600),
//     );
//   }
//
//   // Return "OTP" input field
//   get _getInputField {
//     return new Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         _otpTextField(_firstDigit),
//         _otpTextField(_secondDigit),
//         _otpTextField(_thirdDigit),
//         _otpTextField(_fourthDigit),
//       ],
//     );
//   }
//
//   // Returns "OTP" input part
//   get _getInputPart {
//     return new Column(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         _getVerificationCodeLabel,
//         _getEmailLabel,
//         _getInputField,
//         _hideResendButton ? _getTimerText : _getResendButton,
//         _getOtpKeyboard
//       ],
//     );
//   }
//
//   // Returns "Timer" label
//   get _getTimerText {
//     return Container(
//       height: 32,
//       child: new Offstage(
//         offstage: !_hideResendButton,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             new Icon(Icons.access_time),
//             new SizedBox(
//               width: 5.0,
//             ),
//             OtpTimer(_controller, 15.0, Color(0xffbcbcbc))
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Returns "Resend" button
//   get _getResendButton {
//     return new InkWell(
//       child: new Container(
//         height: 32,
//         width: 120,
//         decoration: BoxDecoration(
//             color: Colors.black,
//             shape: BoxShape.rectangle,
//             borderRadius: BorderRadius.circular(32)),
//         alignment: Alignment.center,
//         child: new Text(
//           "Resend OTP",
//           style:
//           new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       onTap: () {
//         // Resend you OTP via API or anything
//       },
//     );
//   }
//
//
//   // Returns "Otp" keyboard
//   get _getOtpKeyboard {
//     return new Container(
//         height: _screenSize.width - 80,
//         child: new Column(
//           children: <Widget>[
//             new Expanded(
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   _otpKeyboardInputButton(
//                       label: "1",
//                       onPressed: () {
//                         _setCurrentDigit(1);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "2",
//                       onPressed: () {
//                         _setCurrentDigit(2);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "3",
//                       onPressed: () {
//                         _setCurrentDigit(3);
//                       }),
//                 ],
//               ),
//             ),
//             new Expanded(
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   _otpKeyboardInputButton(
//                       label: "4",
//                       onPressed: () {
//                         _setCurrentDigit(4);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "5",
//                       onPressed: () {
//                         _setCurrentDigit(5);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "6",
//                       onPressed: () {
//                         _setCurrentDigit(6);
//                       }),
//                 ],
//               ),
//             ),
//             new Expanded(
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   _otpKeyboardInputButton(
//                       label: "7",
//                       onPressed: () {
//                         _setCurrentDigit(7);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "8",
//                       onPressed: () {
//                         _setCurrentDigit(8);
//                       }),
//                   _otpKeyboardInputButton(
//                       label: "9",
//                       onPressed: () {
//                         _setCurrentDigit(9);
//                       }),
//                 ],
//               ),
//             ),
//             new Expanded(
//               child: new Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   new SizedBox(
//                     width: 80.0,
//                   ),
//                   _otpKeyboardInputButton(
//                       label: "0",
//                       onPressed: () {
//                         _setCurrentDigit(0);
//                       }),
//                   _otpKeyboardActionButton(
//                       label: new Icon(
//                         Icons.backspace,
//                         color: Color(0xffbcbcbc),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           if (_fourthDigit != null) {
//                             _fourthDigit = null;
//                           } else if (_thirdDigit != null) {
//                             _thirdDigit = null;
//                           } else if (_secondDigit != null) {
//                             _secondDigit = null;
//                           } else if (_firstDigit != null) {
//                             _firstDigit = null;
//                           }
//                         });
//                       }),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
//
//   // Overridden methods
//   @override
//   void initState() {
//     totalTimeInSeconds = time;
//     super.initState();
//     _controller =
//     AnimationController(vsync: this, duration: Duration(seconds: time))
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.dismissed) {
//           setState(() {
//             _hideResendButton = !_hideResendButton;
//           });
//         }
//       });
//     _controller.reverse(
//         from: _controller.value == 0.0 ? 1.0 : _controller.value);
//     _startCountdown();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     _screenSize = MediaQuery.of(context).size;
//     return new Scaffold(
//       appBar: _getAppbar,
//       backgroundColor: Color(0xff212121),
//       body: new Container(
//         width: _screenSize.width,
//         padding: new EdgeInsets.fromLTRB(24.0, 0, 24.0, 40),
//         child:Column(
// //          crossAxisAlignment: CrossAxisAlignment.center,
// //          mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(
//               height: 83.0,
//             ),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Container(
//                   child: _iWillBeLearinigText,
//                 )
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             _learningChoise,
//             Expanded(
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: MaterialButton(
//                   // padding: new Ed,
//                   onPressed: () => {},
//                   child: _continueButton,
//                 ),
//               ),
//             ),//  loginWithGoogle
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Returns "Otp custom text field"
//   Widget _otpTextField(int digit) {
//     return new Container(
//       width: 35.0,
//       height: 45.0,
//       alignment: Alignment.center,
//       child: new Text(
//         digit != null ? digit.toString() : "",
//         style: new TextStyle(
//           fontSize: 30.0,
//           color: Color(0xffbcbcbc),
//         ),
//       ),
//       decoration: BoxDecoration(
// //            color: Colors.grey.withOpacity(0.4),
//           border: Border(
//               bottom: BorderSide(
//                 width: 2.0,
//                 color: Color(0xffbcbcbc),
//               ))),
//     );
//   }
//
//   // Returns "Otp keyboard input Button"
//   Widget _otpKeyboardInputButton({String label, VoidCallback onPressed}) {
//     return new Material(
//       color: Colors.transparent,
//       child: new InkWell(
//         onTap: onPressed,
//         borderRadius: new BorderRadius.circular(40.0),
//         child: new Container(
//           height: 80.0,
//           width: 80.0,
//           decoration: new BoxDecoration(
//             shape: BoxShape.circle,
//           ),
//           child: new Center(
//             child: new Text(
//               label,
//               style: new TextStyle(
//                 fontSize: 30.0,
//                 color: Color(0xffbcbcbc),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Returns "Otp keyboard action Button"
//   _otpKeyboardActionButton({Widget label, VoidCallback onPressed}) {
//     return new InkWell(
//       onTap: onPressed,
//       borderRadius: new BorderRadius.circular(40.0),
//       child: new Container(
//         height: 80.0,
//         width: 80.0,
//         decoration: new BoxDecoration(
//           shape: BoxShape.circle,
//         ),
//         child: new Center(
//           child: label,
//         ),
//       ),
//     );
//   }
//
//   // Current digit
//   void _setCurrentDigit(int i) {
//     setState(() {
//       _currentDigit = i;
//       if (_firstDigit == null) {
//         _firstDigit = _currentDigit;
//       } else if (_secondDigit == null) {
//         _secondDigit = _currentDigit;
//       } else if (_thirdDigit == null) {
//         _thirdDigit = _currentDigit;
//       } else if (_fourthDigit == null) {
//         _fourthDigit = _currentDigit;
//
//         var otp = _firstDigit.toString() +
//             _secondDigit.toString() +
//             _thirdDigit.toString() +
//             _fourthDigit.toString();
//
//         // Verify your otp by here. API call
//       }
//     });
//   }
//
//   Future<Null> _startCountdown() async {
//     setState(() {
//       _hideResendButton = true;
//       totalTimeInSeconds = time;
//     });
//     _controller.reverse(
//         from: _controller.value == 0.0 ? 1.0 : _controller.value);
//   }
//
//   void clearOtp() {
//     _fourthDigit = null;
//     _thirdDigit = null;
//     _secondDigit = null;
//     _firstDigit = null;
//     setState(() {});
//   }
// }
//
// class OtpTimer extends StatelessWidget {
//   final AnimationController controller;
//   double fontSize;
//   Color timeColor = Colors.black;
//
//   OtpTimer(this.controller, this.fontSize, this.timeColor);
//
//   String get timerString {
//     Duration duration = controller.duration * controller.value;
//     if (duration.inHours > 0) {
//       return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
//     }
//     return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
//   }
//
//   Duration get duration {
//     Duration duration = controller.duration;
//     return duration;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation: controller,
//         builder: (BuildContext context, Widget child) {
//           return new Text(
//             timerString,
//             style: new TextStyle(
//                 fontSize: fontSize,
//                 color: timeColor,
//                 fontWeight: FontWeight.w600),
//           );
//         });
//   }
// }