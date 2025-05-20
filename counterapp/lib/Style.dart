



import 'package:flutter/material.dart';

InputDecoration AppInsputstyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10 , 20),
    fillColor: Colors.lime,
    filled: true,
    border: OutlineInputBorder(),
    labelText: label

  ) ;
}


TextStyle HeadTextStyle() {
  return TextStyle(
    fontSize: 28 ,
    fontWeight:  FontWeight.w700 ,
  );
}

ButtonStyle Appbuttonstyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.lightBlue ,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}