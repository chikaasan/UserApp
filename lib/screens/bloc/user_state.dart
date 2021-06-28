part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final UserModel model;
  UserLoaded(this.model);
}

class UserError extends UserState {
  final String message;
  UserError(this.message);
}
