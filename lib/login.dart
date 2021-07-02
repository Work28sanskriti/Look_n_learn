import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 222.0),

              ),
              Container(width:100, height:100 , color: Colors.white70,),
              Padding(
                padding: EdgeInsets.only(bottom: 14.0),

              ),

              Container(width:233, height:34 , color: Colors.white70,),
              Padding(
                padding: EdgeInsets.only(bottom: 250.0),

              ),

              SizedBox(
                height:40,
                width:345,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      // <-- Radius
                    ),
                  ),

                  child: new Text(
                    'Let’s Get Started',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700, // light
                      fontFamily: 'Futura', // italic

                    ),
                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 17.0),

              ),

              SizedBox(
                height:40,
                width:345,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(

                    primary: Colors.white24,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.white70)
                      // <-- Radius
                    ),
                  ),

                  child: new Text(
                    ' I Already Have an Account',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w500, // light
                      //fontStyle: FontStyle.Bold,
                      fontFamily: 'Futura',// italic
                    ),
                  ),

                ),
              ),
     // RaisedButton(
     //     child:
     //     Text("Submit",
     //     style:TextStyle(
     //       fontFamily: 'Roboto',
     //       fontWeight: FontWeight.bold,
     //     ),
     //     ),
     //     onPressed: (){},
     //    ),

          Padding(
            padding: EdgeInsets.only(bottom: 100.0),

            ),


            ]),
      ),
      );

  }
}