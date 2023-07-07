// import 'package:dio/dio.dart';
// import 'package:hive/hive.dart';
// import 'package:trade/common/components/is_box_open.dart';
// import 'package:trade/common/hive_keys.dart';
// import 'package:trade/core/error/exception.dart';
// import 'package:trade/core/error/failure.dart';
// import 'package:trade/fuatures/login/data/models/token_model/login_model.dart';
// import 'package:trade/fuatures/login/data/models/user_model/user_model.dart';

// abstract class LoginRemoteDataSource {
//   Future<dynamic> getToken(String login, String password);

//   Future<dynamic> thisUser();
// }

// class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
//   Dio dio;

//   LoginRemoteDataSourceImpl({required this.dio});

//   @override
//   Future<dynamic> getToken(String login, String password) async {
//     String requestBody = "username=$login&password=$password";
//     try {
//       final responce = await dio.request('/token',
//           data: requestBody, options: Options(method: 'POST'));
//       if (responce.statusCode == 200) {
//         return LoginModel.fromJson(responce.data);
//       }
//     } on DioException catch (e) {
//       final failure = DioExceptions.fromDioError(e);
//       return failure;
//     }
//   }

//   @override
//   Future thisUser() async {
//     try {
//       isBoxOpen(HiveKey.tokenModel);
//       final box = Hive.box(HiveKey.tokenModel);
//       final jsonData = box.get(HiveKey.tokenModel);
//       // final myData = LoginModel.fromJson(jsonData);
//       final responce = await dio.request('/this_user?user_id=${jsonData.id}',
//           options: Options(method: 'GET', headers: {
//             'accept': 'application/json',
//             'Authorization': 'Bearer ${jsonData.accessToken}'
//           }));
//       if (responce.statusCode == 200) {
//         return UserModel.fromJson(responce.data);
//       }
//     } on DioException catch (e) {
//       final failure = DioExceptions.fromDioError(e);
//       return failure;
//     }
//   }
// }
