abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

class AuthLoadingState extends AuthStates {}

class AuthFailureState extends AuthStates {
  final String errorMessage;

  AuthFailureState({required this.errorMessage});
}

class AuthSuccessState extends AuthStates {}
