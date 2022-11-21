part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.submit(
      {required String username, required String password}) = _Submit;
}
