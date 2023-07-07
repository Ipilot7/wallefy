import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:wallefy/core/error/failure.dart';
import 'package:wallefy/core/usecases/use_case.dart';
import 'package:wallefy/fuatures/login/domain/repositories/login_repository.dart';
class ThisUserUsesCase extends UseCase<dynamic, ThisUserParams> {
  final LoginRepository repository;

  ThisUserUsesCase({required this.repository});

  @override
  Future<Either<Failure, dynamic>> call(ThisUserParams params) {
    return repository.thisUser();
  }
}

class ThisUserParams extends Equatable {
  const ThisUserParams();

  @override
  List<Object?> get props => [];
}
