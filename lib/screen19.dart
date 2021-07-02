import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:look_n_learn/box.dart';

class Screen19 extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Screen19> {

  get _textunderOT{
    return SizedBox(
      height: 50,
      width: 350,
      child: Text(
        "When are you Planning your GRE?",
        style: TextStyle(
          color: Color(0xffe5e5e5),
          fontSize: 14,
          fontFamily: "Sen",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  // get _options{
  //   return
  //   // return SizedBox(
  //   //   width: 337,
  //   //   height: 157,
  //   //     child:
  //   //         Material(
  //   //           color: Color(0xff3b3b3b),
  //   //           shape: RoundedRectangleBorder(
  //   //             side: BorderSide(width: 1, color: Color(0xffbcbcbc), ),
  //   //             borderRadius: BorderRadius.circular(7),
  //   //           ),
  //   //         ),
  //   // );
  // }
  get _or{
    return Text(
      "(OR)",
      style: TextStyle(
        color: Color(0xff00bfff),
        fontSize: 24,
        fontFamily: "Futura",
        fontWeight: FontWeight.w500,
      ),
    );
  }


  get _month {


    return Padding(
      padding: const EdgeInsets.only(left:50.0, right: 130,bottom: 20),
      child: Text(
        "Month",
        style: TextStyle(
          color: Color(0xffbcbcbc),
          fontSize: 18,
          fontFamily: "Sen",
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }




  get _ddm {
    return SizedBox(
      width: 132,
      height: 39,
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "May",
            style: TextStyle(
              color: Color(0xffbcbcbc),
              fontSize: 18,
              fontFamily: "Sen",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        color: Color(0xff3b3b3b),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffbcbcbc), ),
          borderRadius: BorderRadius.circular(7),

        ),
      ),
    );
  }


  get _custom {
    return  Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Text(
        "Customize",
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

  get _ddy{
    return SizedBox(
      width: 132,
      height: 39,
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2021",
            style: TextStyle(
              color: Color(0xffbcbcbc),
              fontSize: 18,
              fontFamily: "Sen",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        color: Color(0xff3b3b3b),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xffbcbcbc),),
          borderRadius: BorderRadius.circular(7),

        ),
      ),
    );
  }
  get _year{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Year",
        style: TextStyle(
          color: Color(0xffbcbcbc),
          fontSize: 18,
          fontFamily: "Sen",
          fontWeight: FontWeight.w700,
        ),
      ),
    )
    ;
  }
  get _button{
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
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
                                "Almost Done",
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
      body: Column (
        children: <Widget>
        [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row (
              children: [
                _custom,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20, left: 24, bottom: 20),
            child: Row (
              children: [
                _textunderOT,
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.white10, spreadRadius: 0.5),
                    ],
                  ),

                  child: Column(

                    children: <Widget>[
                      box("3 Months"),
                      box("6 Months"),
                      box("9 Months"),
                      box("12 Months"),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 35, bottom: 20),
                child: Row(
                  children:[_or],
                ),
              ), Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[ Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _month,
                    _year,
                  ],),
                ],
              ),
              Column(
                  children:<Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  _ddm,
                  _ddy,
                ],),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 142),
              ),

              _button,
            ],
          ),
        ],
      ),
    );
  }
}

