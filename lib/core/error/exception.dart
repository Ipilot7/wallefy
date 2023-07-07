import 'package:dio/dio.dart';
import 'package:wallefy/core/error/failure.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class DioExceptions implements Exception {
  late Failure failure;

  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        failure = ConnectionFailure(dioError.response?.data['detail']);
        break;
      case DioExceptionType.connectionTimeout:
        failure = ConnectionFailure(dioError.response?.data['detail']);
        break;
      case DioExceptionType.receiveTimeout:
        failure = ConnectionFailure(dioError.response?.data['detail']);

        break;
      case DioExceptionType.sendTimeout:
        failure = ConnectionFailure(dioError.response?.data['detail']);
        break;
      case DioExceptionType.badResponse:
        failure = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.connectionError:
        failure = ConnectionFailure(dioError.response?.data['detail']);
        break;
      case DioExceptionType.badCertificate:
        failure = BadResponceFailure(dioError.response?.data['detail']);
        break;
      case DioExceptionType.unknown:
        failure = UnknownFailure(dioError.response?.data['detail']);
        break;
      default:
        failure = UnknownFailure(dioError.response?.data['detail']);
        break;
    }
  }

  Failure _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return BadResponceFailure(error['detail']);
      case 401:
        return UnautorizedFailure(error['detail']);
      case 403:
        return ForbiddenFailure(error['detail']);
      case 404:
        return UrlNotFoundFailure(error['message']);
      case 500:
        return ServerFailure(error);
      case 502:
        return BadResponceFailure(error['detail']);
      default:
        return UnknownFailure(error['detail']);
    }
  }
}
