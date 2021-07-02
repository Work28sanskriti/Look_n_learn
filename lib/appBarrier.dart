import 'package:flutter/material.dart';
import 'Instructions.dart';
import 'box.dart';
import 'overviewPage.dart';

class AppName extends StatefulWidget {
  IconData icon;
  String name;
  Color color;
  AppName(this.icon,this.name, [this.color = Colors.green]);

  @override
  _AppNameState createState() => _AppNameState();
}

class _AppNameState extends State<AppName> {
    get _Barrier{
    return Text(
      "App Barrier",
      style: TextStyle(
        color: Color(0xff00bfff),
        fontSize: 24,
        fontFamily: "Sen",
        fontWeight: FontWeight.w700,
      ),
    );
  }
    get _BarrierText {
      return
        SizedBox(
          width: 337,
          child: Text(
            "Everytime you open the selected Applications you will Learn a word",
            style: TextStyle(
              color: Color(0xffbcbcbc),
              fontSize: 12,
              fontFamily: "Sen",
              fontWeight: FontWeight.w700,
            ),
          ),
        );
    }
    get _skip {
      return Padding(
        padding: const EdgeInsets.only(top: 100,left: 270,bottom: 20),
        child: Text(
          "Skip for Now",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xffbcbcbc),
            fontSize: 12,
            decoration: TextDecoration.underline,
            fontFamily: "Sen",
            fontWeight: FontWeight.w700,
          ),
        ),
      );


    }

    get _button {
      return Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Container(
          width: 345,
          height: 40,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 345,
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 345,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff00bfff),
                      ),
                      child: Stack(
                        children: [

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
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
//padding: const EdgeInsets.only(bottom: 80.0),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff212121),
     body:

     Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 30.0,top:80),
           child: Row(children: [_Barrier],),
         ),
         Padding(
           padding: const EdgeInsets.only(top:15, left: 30, bottom: 20),
           child: Row (
             children: [
               _BarrierText,
             ],
           ),
         ),

         Container(

          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 18.0),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 3.0),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(color: Colors.white10, spreadRadius: 3),
                        ],
                      ),
                      child: Column(

                          children: <Widget>[
                            box("Search", icon:Icons.search),
                          box("Popular",flag: false),
                          box("Instagram"),
                          box("Facebook"),
                          box("TWitter"),
                            box("Youtube"),
                            box("Dicord"),
                            box("All Applications",flag: false),
                            box("Instagram"),
                            box("Google Chrome"),
                            box("view more", icon:Icons.arrow_forward),




                        ],
                      ),
                ),
                   ],
                 ),

            ],),
    ),
         _skip,
_button,

       ],
     )
    );
  }
}
