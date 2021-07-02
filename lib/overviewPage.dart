import 'package:flutter/material.dart';
import 'Instructions.dart';

class OverviewPage extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<OverviewPage> {
  get _overviewText{
    
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Text(
          "Overview",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color(0xff00bfff),
            fontSize: 24,
            fontFamily: "Sen",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
  get _textunderOT{
    return Expanded(
      child: SizedBox(
        height: 50,
        width: 350,
        child: Text(
          "Learn a New word every time you open a social Media App without actually realizing. \n\n\n\n\n",
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


  get _instruction {
    return
      Expanded(
        child: Text(
        "Instructions",
        style: TextStyle(
          color: Color(0xff9abc05),
          fontSize: 18,
          fontFamily: "Sen",
          fontWeight: FontWeight.w700,
        ),
    ),
      );
  }




  get _goal {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              "Goals",
              style: TextStyle(
                color: Color(0xff9abc05),
                fontSize: 18,
                fontFamily: "Sen",
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
  get _goalLogo{
    return Expanded ( child:Container(
      width: 30,
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3, ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            width: 20,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.ad_units_outlined, color: Colors.blue,size: 40,),
          ),
        ],
      ),
    ),
    );
  }
  get _goalLogo2{
    return Expanded(
      child: Container(
        width: 30,
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3, ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 20,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.access_time_rounded, color: Colors.blue,size: 40,),
            ),
          ],
        ),
      ),
    );
  }
  get _goalLogoText{
    return Expanded ( child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        "2,500+\nwords",
        style: TextStyle(
          color: Color(0xffe5e5e5),
          fontSize: 18,
        ),
      ),
    ),
    );
  }
  get _goalLogoText2 {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          " in 6\nmonths",
          style: TextStyle(
            color: Color(0xffe5e5e5),
            fontSize: 18,
          ),
        ),
      ),
    );

  }
  get _happyLearning{
    return Expanded ( child: Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 30),
      child: Text(
        "Happy Learning!",
        style: TextStyle(
          color: Color(0xff9abc05),
          fontSize: 36,
          fontFamily: "Sen",
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    );

  }
  get _button {
    return Expanded(
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
                              "Yayy!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff212121),
                                fontSize: 22,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      // body: Row(
      //   mainAxisSize: MainAxisSize.min,
      //   mainAxisAlignment:MainAxisAlignment.start,
      //   crossAxisAlignment:CrossAxisAlignment.start,
      //   children: [
      body: SingleChildScrollView(
        
        child: Expanded(
          child: Column (
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row (
                  children: [
                    _overviewText,
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
              Container(
                height: 1,
                color: Colors.white70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15, bottom: 20),
                child: Row(
                    children: [_instruction,]
                ),
              ),
              // Row(
              //
              //   children: [_i1],
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                child: Row(
                  children: [Instructions( "30 minutes Gap between every new word so you don’t crowd your happy brain",Icons.alarm, color:Colors.blue)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                child: Row(
                  children: [ Instructions( "We revise the learned words every week, fortnight and month so you never forget.",Icons.album_outlined,color:Colors.white70)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                child: Row(
                  children: [ Instructions( "Selected words for GRE/\nCurated words to imporve daily conversation",Icons.circle,color:Colors.pink)],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 8.0 , bottom: 20),
                child: Row(
                  children: [
                    Instructions("We categorize your learned words in 5 sections based on how familiar you are with the word, and display words so you master all of them  ",Icons.library_books_outlined, color:Colors.blueGrey),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.white70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15, bottom: 5),
                    child: Row(
                      children:[_goal],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      _goalLogo,
                      _goalLogoText,
                   //   _goalLogo2,
                      _goalLogoText2,

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      height: 1,
                      color: Colors.white70,
                    ),
                  ),
                  Container(
                    child: _happyLearning,

                  ),
                  Container(
                    child: _button,

                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

