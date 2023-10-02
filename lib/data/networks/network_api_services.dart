

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm/data/networks/base_Api.dart';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';

class NetworkAPiServices extends BaseApiServices{

  @override

  Future<dynamic> getApi(String url)async{

    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson =  returnResponse(response);
    } on SocketException{
      throw InternetExceptions('');
    }on TimeoutException{
      throw RequestTimeOutException('');
    }
 
    return responseJson;

  }
  @override

  Future<dynamic> postApi(var data , String url)async{

    dynamic responseJson;

    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson =  returnResponse(response);
    } on SocketException{
      throw InternetExceptions('');
    }on TimeoutException{
      throw RequestTimeOutException('');
    }

    return responseJson;

  }
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlExceptions();
      default :
        throw FetchDataExceptions('Error while communicating '+response.statusCode.toString());
    }
  }

}