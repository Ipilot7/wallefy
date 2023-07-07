// import 'package:bloc/bloc.dart';
// import 'package:trade/core/error/exception.dart';
// import 'package:trade/core/error/failure.dart';
// import 'package:trade/fuatures/login/domain/use_cases/login_usescase.dart';
// import 'package:trade/fuatures/login/domain/use_cases/this_user_data.dart';

// part 'login_event.dart';

// part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final LoginUsesCase usesCase;
//   final ThisUserUsesCase thisUserUsesCase;

//   LoginBloc({required this.thisUserUsesCase, required this.usesCase})
//       : super(const LoginState.initial()) {
//     on<GetToken>(getToken);
//     on<ThisUserEvent>(thisUser);
//   }

//   void getToken(GetToken event, Emitter<LoginState> emit) async {
//     emit(state.asLoading());
//     try {
//       final failureOrLogin = await usesCase(
//           LoginParams(login: event.login, password: event.password));
//       failureOrLogin.fold(
//         (l) => emit(state.asLoadFailure(l)),
//         (r) async {
//           if (r is DioExceptions) {
//             emit(state.asNotFound(r.failure.message));
//           } else {
//             emit(state.asLoadSuccess());
//           }
//         },
//       );
//     } on Failure catch (e) {
//       emit(state.asLoadFailure(e));
//     }
//   }

//   void thisUser(ThisUserEvent event, Emitter<LoginState> emit) async {
//     try {
//       emit(state.asLoading());
//       final failureOrUser = await thisUserUsesCase(const ThisUserParams());
//       failureOrUser.fold(
//         (l) => emit(state.asLoadFailure(l)),
//         (r) async {
//           if (r is String) {
//             emit(state.asUserFailure(r));
//           } else {
//             emit(state.asUserSuccess());
//           }
//         },
//       );
//     } on Failure catch (e) {
//       emit(state.asLoadFailure(e));
//     }
//   }
// }
