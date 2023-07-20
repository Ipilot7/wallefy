import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:wallefy/core/platform/network_info.dart';

final di = GetIt.instance;

Future<void> init() async {
  // di.registerFactory(() => LoginBloc(usesCase: di(), thisUserUsesCase: di()));

//UseCase
  // di.registerLazySingleton(() => LoginUsesCase(repository: di()));

  ///Repository
  // di.registerFactory<LoginRepository>(
  //   () => LoginRepositoryImpl(
  //     localDataSourceImpl: di(),
  //     remoteDataSourceImpl: di(),
  //     networkInfo: di(),
  //   ),
  // );

  /// DataSource
  // di.registerLazySingleton<LoginRemoteDataSourceImpl>(
  //     () => LoginRemoteDataSourceImpl(dio: di()));

  /// Network
  final options = BaseOptions(
      baseUrl: 'https://tradeproject-api.crud.uz',
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'accept': 'application/json'
      });

  Dio dio = Dio(options);
  dio.interceptors.add(LogInterceptor());

  di.registerSingleton<Dio>(dio);

  /// Network Info
  di.registerLazySingleton(() => InternetConnectionChecker());

  di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));

  /// Local cache

  // final SharedPreferences sharedPreferences =
  //     await SharedPreferences.getInstance();
  // di.registerLazySingleton(() => sharedPreferences);

  // /// Local datasource

  // HiveDatasource().hiveRegister();
  // await Hive.initFlutter();
  // if (!Hive.isAdapterRegistered(1)) {
  //   Hive.registerAdapter<LoginModel>(LoginModelAdapter());
  //   await Hive.openBox(HiveKey.tokenModel);
  // }
  // if (!Hive.isAdapterRegistered(2)) {
  //   Hive.registerAdapter<UserModel>(UserModelAdapter());
  //   await Hive.openBox(HiveKey.userModel);
  // }
// }
//
// class HiveDatasource {
//   static Future hiveRegister() async {
//     await Hive.initFlutter();
//     if (!Hive.isAdapterRegistered(1)) {
//       Hive.registerAdapter<LoginModel>(LoginModelAdapter());
//       await Hive.openBox(HiveKey.tokenModel);
//     }
//     if (!Hive.isAdapterRegistered(2)) {
//       Hive.registerAdapter<UserModel>(UserModelAdapter());
//       await Hive.openBox(HiveKey.userModel);
//     }
//   }
//
//   static Future deleteBoxFromDisk() async {
//     await Hive.deleteBoxFromDisk(HiveKey.userModel);
//     await Hive.deleteBoxFromDisk(HiveKey.tokenModel);
//   }
// }
}
