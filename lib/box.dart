import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Instructions.dart';

class box extends StatefulWidget {
  final String Month;
  bool flag ;
  IconData icon;
  box(this.Month ,{this.flag=true, this.icon=Icons.check_circle});
  @override
  _boxState createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 41,

      child: Column(
        children:<Widget>[
          widget.flag ? Instructions(widget.Month,widget.icon ):
          Instructions(widget.Month, widget.icon, isTrue: false,textColor: Colors.green,weight: FontWeight.bold,),

        Container(
          height: 30,
          color: Colors.white70,
        ),
        ]
      ),
    );
  }
}
