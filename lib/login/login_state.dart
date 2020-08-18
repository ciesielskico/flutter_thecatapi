part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({this.status});

  final FormzStatus status;
  final Username username;
  final Password password;

  LoginState copyWith({
    FormzStatus status,
    Username username,
    Password password
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    )
  }

  @override
  List<Object> get props => [status, username, password];
}