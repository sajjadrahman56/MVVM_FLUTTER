import 'package:flutter/material.dart';
import 'package:movie_fetch/utils/utils.dart';
import 'package:movie_fetch/view_mode/auth_view_model.dart';

import '../resources/components/round_button.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  ValueNotifier _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose()
  {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    _obsecurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        centerTitle: true,
        leading: Icon(Icons.man,size: 40,),

      ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                ValueListenableBuilder(
                    valueListenable: _obsecurePassword,
                    builder: (context,value,child)
                    {
                      return  TextFormField(
                        controller: _passwordController,
                        obscureText: _obsecurePassword.value,
                        focusNode: passwordFocusNode,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: InkWell(
                                onTap: (){
                                  _obsecurePassword.value = !_obsecurePassword.value;
                                },
                                child: Icon(
                                   _obsecurePassword.value ? Icons.visibility_off_outlined : Icons.visibility
                                ))
                        ),
                        onFieldSubmitted: (value){
                          //Utils.fieldFocusChange(context,emailFocusNode,passwordFocusNode);
                        },
                      );
                    }
                ),
                SizedBox(height: height*.085,),
                RoundButton(
                  title: 'Log in',
                  loading: authViewModel.loading,
                  onPress: (){
                  if(_emailController.text.isEmpty){
                    Utils.flushBarErrorMessage('Please Enter email', context);
                  }
                  else if(_passwordController.text.isEmpty)
                    {
                      Utils.flushBarErrorMessage('Please Enter password', context);
                    }
                  else if(_passwordController.text.length < 6){
                    Utils.flushBarErrorMessage('Enter 6 digit password', context);

                  }
                  else
                    {
                      Map data = {
                        'email' : _emailController.text.toString(),
                        'password': _passwordController.text.toString(),
                      };
                      authViewModel.loginApi(data,context);
                      print('Api Hit');
                    }
                  },
                ),


              ],
            ),
          ),
        )
    );
  }
}
