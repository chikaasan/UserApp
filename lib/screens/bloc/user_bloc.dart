import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:person/model.dart/user_model.dart';
import 'package:person/screens/bloc/user_repository.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository repository = UserRepository();

  UserBloc(this.repository) : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    try {
      if(event is GetUserEvent) {
        yield UserInitial();
        UserModel data = await repository.getUser();
        yield UserLoaded(data);
      }
    } catch (e) {
      yield UserError("Ошибка");
    }
  }
}
