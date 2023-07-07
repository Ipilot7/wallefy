import 'package:dartz/dartz.dart';
import 'package:wallefy/core/error/failure.dart';

abstract class LoginRepository {
  Future<Either<Failure, dynamic>> getToken(String login, String password);

  Future<Either<Failure, dynamic>> thisUser();
}
