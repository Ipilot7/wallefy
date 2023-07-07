import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wallefy/core/error/failure.dart';
import 'package:wallefy/core/usecases/use_case.dart';
import 'package:wallefy/fuatures/login/domain/repositories/login_repository.dart';
class LoginUsesCase extends UseCase<dynamic, LoginParams> {
  final LoginRepository repository;

  LoginUsesCase({required this.repository});

  @override
  Future<Either<Failure, dynamic>> call(LoginParams params) {
    return repository.getToken(params.login,params.password);
  }
}

class LoginParams extends Equatable {
  final String login, password;

  const LoginParams({required this.login, required this.password});

  @override
  List<Object?> get props => [login, password];
}
