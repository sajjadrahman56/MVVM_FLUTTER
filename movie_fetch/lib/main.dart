import 'package:flutter/material.dart';
import 'package:movie_fetch/utils/routes/routes.dart';
import 'package:movie_fetch/utils/routes/routes_name.dart';
import 'package:movie_fetch/view/login_view.dart';
import 'package:movie_fetch/view_mode/auth_view_model.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>AuthViewModel()),
        ],
    child:  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    ),);
  }
}

