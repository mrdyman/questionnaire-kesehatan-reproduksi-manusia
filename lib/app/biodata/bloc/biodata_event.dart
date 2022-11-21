part of 'biodata_bloc.dart';

@freezed
class BiodataEvent with _$BiodataEvent {
  const factory BiodataEvent.submit(String name, int age, String clases) =
      _Submit;
  const factory BiodataEvent.moveToQuestionaire() = _MoveToQuestionaire;
}
