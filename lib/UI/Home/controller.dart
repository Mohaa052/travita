import 'package:dio/dio.dart';
import 'package:travita/UI/Home/testingModel.dart';

class HomeController {
  Future<TestingApiModel> getData() async {
    var response = await Dio()
        .get("https://0568-45-247-152-109.ngrok-free.app/api/v1/hotels");
    Map<String, dynamic> apiMap = response.data;
    return TestingApiModel.fromJson(apiMap);
  }

  late final List<String> vector = [
    "image/Vector4.png",
    "image/Vector3.png",
    "image/Vector2.png",
    "image/Vector1.png",
  ];
  late final List<String> titles = [
    "Attractions",
    "Hotels",
    "Coffee Shops",
    "Restaurants",
  ];
}
