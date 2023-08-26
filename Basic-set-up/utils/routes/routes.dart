import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_fetch/utils/routes/routes_name.dart';
import 'package:movie_fetch/view/home_screen.dart';
import 'package:movie_fetch/view/login_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body:Center(
            child: Text("No route defined"),
        )
          );
        });

    }
  }
}