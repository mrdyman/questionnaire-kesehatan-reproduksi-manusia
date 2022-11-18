part of 'biodata_bloc.dart';

@freezed
class BiodataEvent with _$BiodataEvent {
  const factory BiodataEvent.submit(String name, String age, String clases) =
      _Submit;
}
