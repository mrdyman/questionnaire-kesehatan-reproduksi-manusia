part of 'teori_bloc.dart';

@freezed
class TeoriState with _$TeoriState {
  const factory TeoriState.initial() = _Initial;
  const factory TeoriState.pdfLoaded(String path) = _PdfLoaded;
  const factory TeoriState.isReady() = _IsReady;
  const factory TeoriState.isError() = _IsError;
  const factory TeoriState.isPageError() = _IsPageError;
  const factory TeoriState.isPageChanged() = _IsPageChanged;
}
