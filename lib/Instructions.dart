import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Instructions extends StatefulWidget {
 IconData icon;
 String name;
 Color color;
 bool isTrue;
 Color textColor;
 FontWeight weight;
 Instructions(this.name, this.icon , { this.color = Colors.white60,
   this.isTrue =true,
   this.textColor = const Color(0xffe5e5e5), this.weight=FontWeight.w500});

  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Container(
        width: 100,
        height: 40,

        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              width: 23, //space b/w icon & text
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              //child: FlutterLogo(size: 23),
              child:  widget.isTrue ?
                Icon(widget.icon, color: widget.color)
                  :Visibility(
                visible: false,
                child: Icon(widget.icon, color: widget.color),
              ),
            ),
            SizedBox(width: 16),
            SizedBox(
              width: 200, //mq
              child: Text(
                widget.name,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 12,
                  fontFamily: "Futura",
                  fontWeight: widget.weight,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

