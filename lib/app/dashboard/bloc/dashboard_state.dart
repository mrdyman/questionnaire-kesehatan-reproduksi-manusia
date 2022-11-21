part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState.initial() = _Initial;
  factory DashboardState.loading({@Default(false) bool isLoading}) = _Loading;
  factory DashboardState.loaded(
      {List<Result>? dataResult, required String userLogin}) = _Loaded;
}
