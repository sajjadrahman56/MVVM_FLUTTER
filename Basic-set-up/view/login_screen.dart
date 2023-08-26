import 'package:flutter/material.dart';
import 'package:movie_fetch/utils/utils.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: InkWell(
              onTap:(){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
               // Utils.toastMessage('click me');
               // Utils.flushBarErrorMessage("no internet fount", context);
                Utils.snakBar("Network failed", context);
              },
              child:Container(
                  color: Colors.red,
                  child: Text("Click"))
          ),
        )
    );
  }
}
