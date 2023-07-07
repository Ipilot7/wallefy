// part of 'login_bloc.dart';

// // @immutable
// // abstract class LoginState {}
// //
// // class LoginInitial extends LoginState {}

// enum LoginStateStatus {
//   initial,
//   loading,
//   tokenSuccess,
//   userSuccess,
//   userFailure,
//   notFound,
//   tokenFailure,
// }

// class LoginState {
//   final LoginStateStatus status;
//   final Failure? error;
//   final String? message;

//   const LoginState._({
//     this.status = LoginStateStatus.initial,
//     this.error,
//     this.message,
//   });

//   const LoginState.initial() : this._();

//   LoginState asLoading(String message) {
//     return copyWith(status: LoginStateStatus.loading);
//   }

//   LoginState asLoadSuccess() {
//     return copyWith(status: LoginStateStatus.tokenSuccess);
//   }

//   LoginState asUserSuccess() {
//     return copyWith(status: LoginStateStatus.userSuccess);
//   }

//   LoginState asUserFailure(String message) {
//     return copyWith(status: LoginStateStatus.userFailure);
//   }

//   LoginState asNotFound(String message) {
//     return copyWith(status: LoginStateStatus.notFound, message: message);
//   }

//   LoginState asLoadFailure(Failure e) {
//     return copyWith(status: LoginStateStatus.tokenFailure, error: e);
//   }

//   LoginState copyWith({
//     LoginStateStatus? status,
//     Failure? error,
//     String? message,
//   }) {
//     return LoginState._(
//       status: status ?? this.status,
//       error: error ?? this.error,
//       message: message,
//     );
//   }
// }
