part of 'biodata_bloc.dart';

@freezed
class BiodataState with _$BiodataState {
  final formKey = GlobalKey<FormState>();

  final nameTEC = TextEditingController();
  final ageTEC = TextEditingController();
  final clasesTEC = TextEditingController();

  final noHpMaskFormatter = MaskTextInputFormatter(
    mask: '##########',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  final ageMaskFormatter = MaskTextInputFormatter(
    mask: '##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  BiodataState._();
  factory BiodataState.initial() = _Initial;
  factory BiodataState.loading({@Default(false) bool isLoading}) = _Loading;
}
