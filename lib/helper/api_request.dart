import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiRequester {
  static String url = "https://randomuser.me/api/";

  Future<Dio> initDio() async {
    return Dio(BaseOptions(
      baseUrl: url,
      responseType: ResponseType.json,
      receiveTimeout: 10000,
      connectTimeout: 10000
    ));
  }

  Future<Response> toGet(String url) async {
    Dio dio = await initDio();
    try {
      return dio.get(url);
    } on DioError catch (dioError) {
      if (dioError.type == DioErrorType.response) {
        debugPrint(
            "Error: ${dioError.response.data["message"]}(code ${dioError.response.statusCode})");
        if (dioError.response.statusCode == 404) {
          throw Exception(dioError.response.data["message"]);
        } else if (dioError.response.statusCode == 400) {
          throw Exception(dioError.response.data["message"]);
        }
        throw Exception(dioError.response.data["message"]);
      } else if (dioError.type == DioErrorType.connectTimeout) {
        throw Exception("Время запроса истек");
      } else {
        debugPrint("Error: )");
        throw Exception("Произошла системная ошибка");
      }
    } catch (err) {
      debugPrint("Error: )");
      throw Exception(err);
    }

  }

}