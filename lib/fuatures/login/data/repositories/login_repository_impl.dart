// import 'package:dartz/dartz.dart';
// import 'package:trade/core/error/failure.dart';
// import 'package:trade/core/platform/network_info.dart';
// import 'package:trade/fuatures/login/data/data_sources/login_local_datasource.dart';
// import 'package:trade/fuatures/login/data/data_sources/login_remote_data_source.dart';
// import 'package:trade/fuatures/login/data/models/token_model/login_model.dart';
// import 'package:trade/fuatures/login/domain/repositories/login_repository.dart';

// class LoginRepositoryImpl extends LoginRepository {
//   final LoginRemoteDataSourceImpl remoteDataSourceImpl;
//   final LoginLocalDataSourceImpl localDataSourceImpl;
//   final NetworkInfo networkInfo;

//   LoginRepositoryImpl(
//       {required this.remoteDataSourceImpl,
//       required this.localDataSourceImpl,
//       required this.networkInfo});

//   @override
//   Future<Either<Failure, dynamic>> getToken(
//       String login, String password) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final result = await remoteDataSourceImpl.getToken(login, password);
//         if (result is LoginModel) {
//           localDataSourceImpl.setToken(result);
//         }
//         return Right(result);
//       } on Failure catch (e) {
//         return Left(e);
//       }
//     } else {
//       return const Left(ConnectionFailure("Connection error"));
//     }
//   }

//   @override
//   Future<Either<Failure, dynamic>> thisUser() async {
//     if (await networkInfo.isConnected) {
//       try {
//         final result = await remoteDataSourceImpl.thisUser();
//         localDataSourceImpl.setUser(result);
//         return Right(result);
//       } on Failure catch (e) {
//         return Left(e);
//       }
//     } else {
//       return const Left(ConnectionFailure("Connection error"));
//     }
//   }
// }
