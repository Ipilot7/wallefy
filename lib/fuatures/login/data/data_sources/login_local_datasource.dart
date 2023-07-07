// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:trade/common/components/is_box_open.dart';
// import 'package:trade/common/hive_keys.dart';
// import 'package:trade/fuatures/login/data/models/token_model/login_model.dart';
// import 'package:trade/fuatures/login/data/models/user_model/user_model.dart';

// abstract class LoginLocalDataSource {
//   Future<LoginModel>? getToken();

//   Future<UserModel>? getUser();

//   Future<bool> setToken(LoginModel data);

//   Future<bool> setUser(UserModel data);
// }

// class LoginLocalDataSourceImpl extends LoginLocalDataSource {
//   @override
//   Future<LoginModel>? getToken() {
//     try {
//       isBoxOpen(HiveKey.userModel);
//       final box = Hive.box(HiveKey.userModel);
//       final eventsFromHive = box.get(HiveKey.userModel)?.cast<UserModel>();
//       return eventsFromHive;
//     } catch (e) {
//       return null;
//     }
//   }

//   @override
//   Future<UserModel>? getUser() {
//     try {
//       isBoxOpen(HiveKey.userModel);
//       final box = Hive.box(HiveKey.userModel);
//       final eventsFromHive = box.get(HiveKey.userModel)?.cast<UserModel>();
//       return eventsFromHive;
//     } catch (e) {
//       return null;
//     }
//   }

//   @override
//   Future<bool> setToken(LoginModel data) async {
//     try {
//       isBoxOpen(HiveKey.tokenModel);
//       final box = Hive.box(HiveKey.tokenModel);
//       box.put(HiveKey.tokenModel, data);
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }

//   @override
//   Future<bool> setUser(UserModel data) async {
//     try {
//       isBoxOpen(HiveKey.userModel);
//       final box = Hive.box(HiveKey.userModel);
//       box.put(HiveKey.userModel, data);
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }
