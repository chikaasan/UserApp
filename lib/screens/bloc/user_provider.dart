
import 'package:dio/dio.dart';
import 'package:person/helper/api_request.dart';
import 'package:person/model.dart/user_model.dart';

class UserProvider {

  Future<UserModel> getUser() async {
    try {
      ApiRequester requester = ApiRequester();
      Response response = await requester.toGet("");
      if(response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }

    } catch (e) {
      throw Exception("Ошибка");
    }
  }
} 