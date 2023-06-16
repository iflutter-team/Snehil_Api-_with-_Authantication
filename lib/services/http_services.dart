import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  ///api option
  ///get
  ///post
  ///delete
  ///put

  static Future<http.Response?> getApi({required String url}) async {
    try {
      if (kDebugMode) {
        print('------------------------------$url');
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  static Future<http.Response?> postApi({required String url, Map<String, dynamic>? body}) async {
    try {
      if (kDebugMode) {
        print('------------------------------$url');
        print('------------------------------$body');
      }
      return await http.post(Uri.parse(url),body: body);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
