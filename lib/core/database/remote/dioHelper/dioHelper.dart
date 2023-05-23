import 'package:dio/dio.dart';
import 'package:travita/core/app_constants/constants.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  /////////////////////////////////////////////

  static Future<Response> getFavoriteData() async {
    dio!.options.baseUrl = AppConstants.baseUrl;
    dio!.options.headers['Authorization'] =
        'Bearer ${AppConstants.accessToken}';
    return await dio!.get(
      "favorites",
    );
  }

  static Future<Response> postFavorite({
    required Map<String, dynamic> data,
  }) async {
    dio!.options.baseUrl = AppConstants.baseUrl;
    dio!.options.headers['Authorization'] =
        'Bearer ${AppConstants.accessToken}';
    return await dio!.post(
      "favorites",
      data: data,
    );
  }

  static Future<Response> deleteFavorite({
    required String subType,
    required String id,
  }) async {
    dio!.options.baseUrl = AppConstants.baseUrl;
    dio!.options.headers['Authorization'] =
        'Bearer ${AppConstants.accessToken}';
    return await dio!.delete(
      "favorites/$subType/$id",
    );
  }

  //////////////////////////////////////////////

  static Future<Response> getData({
    required String baseUrl,
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.baseUrl = baseUrl;
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response?> postData({
    required String url,
    required String baseUrl,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio!.options.baseUrl = baseUrl;

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
    };

    return await dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
