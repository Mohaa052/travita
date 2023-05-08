import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  //https://f819-2a09-bac5-30c8-16a0-00-241-22.ngrok-free.app/api/v1/

  // base url for eCommerce app "postman"
  // https://student.valuxapps.com/api/

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl:
            "https://db8a-2a09-bac5-30cf-16a0-00-241-47.ngrok-free.app/api/v1/",
        //345b-45-247-235-153.ngrok-free.app/v1/
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response?> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = "en",
    String? token,
  }) async {
    dio?.options.headers = {
      "lang": lang,
      "Authorization": token ?? "",
      "Content-Type": "application/json",
    };

    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = "en",
    String? token,
  }) async {
    dio?.options.headers = {
      "lang": lang,
      "Authorization": token ?? "",
      "Content-Type": "application/json",
    };

    return await dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
