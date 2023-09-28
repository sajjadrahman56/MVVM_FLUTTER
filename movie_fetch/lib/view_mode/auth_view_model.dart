
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_fetch/repository/auth_repositiory.dart';
import 'package:movie_fetch/utils/routes/routes_name.dart';

import '../utils/utils.dart';

class AuthViewModel with ChangeNotifier{
  final _myRepo = AuthRepositoiry();

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value)
  {
    _loading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data , BuildContext context) async{

      setLoading(true);
    _myRepo.loginApi(data).then((value){
      setLoading(false);
      Utils.snakBar('Log in Successful',context);
      Navigator.pushNamed(context, RoutesName.home);
     if(kDebugMode)
       {
         print(value.toString());
       }
    }).onError((error, stackTrace) { setLoading(false);
      Utils.flushBarErrorMessage(error.toString(),context);
     if(kDebugMode)
       {
         print(error.toString());
       }
    });
  }
}