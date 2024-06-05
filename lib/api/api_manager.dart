import 'package:dio/dio.dart';
import 'package:eslami/api/endpoints.dart';

import 'constants.dart';

class ApiManager{
  static late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseURL,
      ),
    );
  }

  ApiManager() {
    init();
  }

  dynamic getRadios() async {
    final response = await dio.get(EndPoints.radio);
    return response.data;
  }
}