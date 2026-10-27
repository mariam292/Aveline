import 'package:aveline/features/authentication/cubit/authentication_states.dart';
import 'package:aveline/features/authentication/data/auth_remote_data_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  final AuthRemoteDataSource authRemoteDataSource = AuthRemoteDataSource();


  //* login

  Future<void> logincubit(String email, String password) async {
    emit(AuthLoadingState());

    try {
      await authRemoteDataSource.loginDataSource(
        email: email,
        password: password,
      );

      emit(AuthSuccessState());
    } on Exception catch (e) {
      emit(AuthFailureState(errorMessage: 'Login Failed. Please try again'));
    }
  }


  //*register


  Future<void> registercubit(String email, String password,String firstName,String lastName)async {
    emit(AuthLoadingState());

    try {
      await authRemoteDataSource.registerDataSource(
        email: email,
        password: password, firstName: firstName, lastName: lastName,
      );

      emit(AuthSuccessState());
    } on Exception catch (e) {
      emit(AuthFailureState(errorMessage: 'register Failed. Please try again'));
    }
  }
}
