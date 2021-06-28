
import 'package:person/model.dart/user_model.dart';
import 'package:person/screens/bloc/user_provider.dart';

class UserRepository {
  Future<UserModel> getUser() {
    UserProvider provider = UserProvider();
    return provider.getUser();
  }
}