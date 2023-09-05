import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static toastMessage(String message){
    Fluttertoast.showToast(msg: message
    ,
      backgroundColor: Colors.black,
      textColor: Colors.yellow,
      fontSize: 19,
      toastLength: Toast.LENGTH_SHORT,

    );
  }

  static void flushBarErrorMessage(String message , BuildContext context)
  {
  showFlushbar(context: context, flushbar: Flushbar(
    forwardAnimationCurve: Curves.decelerate,
    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    padding: EdgeInsets.all(15),
    message:message,
    backgroundColor: Colors.red,
    title: "sad",
    duration: Duration(seconds: 4),

    flushbarPosition: FlushbarPosition.TOP,

    reverseAnimationCurve: Curves.easeInOut,
    positionOffset: 20,
    icon: Icon(Icons.error),
  )..show(context));
  }


  static snakBar(String message , BuildContext context)
  {
    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      )
    );
  }

  static void fieldFocusChange(BuildContext context, FocusNode currentFoucs , FocusNode nextFocus)
  {
    currentFoucs.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}