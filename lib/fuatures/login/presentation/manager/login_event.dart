part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

class GetToken extends LoginEvent {
  final String login;
  final String password;

  GetToken({required this.login, required this.password});
}

class ThisUserEvent extends LoginEvent {}
