part of 'questionaire_bloc.dart';

@freezed
class QuestionaireEvent with _$QuestionaireEvent {
  const factory QuestionaireEvent.getSoal() = _GetSoal;
  const factory QuestionaireEvent.nextSoal(bool isBenar) = _NextSoal;
  const factory QuestionaireEvent.completed(
      int benarCount, int salahCount, int totalScore) = _Completed;
}
