part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  AuthState._();
  final formKey = GlobalKey<FormState>();

  final usernameTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  factory AuthState.initial() = _Initial;
  factory AuthState.loading({@Default(false) bool isLoading}) = _Loading;
}
