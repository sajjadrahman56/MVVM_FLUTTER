

import 'package:movie_fetch/data/network/BaseApiServices.dart';
import 'package:movie_fetch/data/network/NetworkApiService.dart';

import '../resources/app_urls.dart';

class AuthRepositoiry{

  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPointUrl, data);
      return response;
    }catch(e){
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async{
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPointUrl, data);
      return response;
    }catch(e){
      throw e;
    }
  }
}
