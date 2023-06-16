import 'dart:convert';

import 'package:api/json_model/photos_model.dart';
import 'package:api/json_model/productModel.dart';
import 'package:api/services/http_services.dart';
import 'package:http/http.dart' as http;

import '../../utils/api_end_points.dart';

class HomeScreenApi{

   static Future getData() async {
    try{
      http.Response? response = await HttpServices.getApi(url: EndPointRes.product);
      if(response != null && response.statusCode == 200){
        return productModelFromJson(response.body);
      }
    }catch(e){
      print(e);
      return null;
    }
  }

  static Future addData() async {
    try{
      http.Response? response = await HttpServices.postApi(url: EndPointRes.product);
      if(response != null && response.statusCode == 200){
        return imageUrlFromJson(response.body);
      }
    }catch(e){
      print(e);
      return null;
    }
  }

}