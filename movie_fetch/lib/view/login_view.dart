import 'package:flutter/material.dart';
import 'package:movie_fetch/utils/utils.dart';

import 'home_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.alternate_email)
                ),
                onFieldSubmitted: (value){
                  Utils.fieldFocusChange(context,emailFocusNode,passwordFocusNode);
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                focusNode: passwordFocusNode,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                ),
                onFieldSubmitted: (value){
                  //Utils.fieldFocusChange(context,emailFocusNode,passwordFocusNode);
                },
              )
            ],
          ),
        )
    );
  }
}
