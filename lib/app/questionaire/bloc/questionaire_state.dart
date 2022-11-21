part of 'questionaire_bloc.dart';

@freezed
class QuestionaireState with _$QuestionaireState {
  const factory QuestionaireState.initial() = _Initial;
  const factory QuestionaireState.loading() = _Loading;
  const factory QuestionaireState.loaded({required List<Soal> soal}) = _Loaded;
}
