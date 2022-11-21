import 'package:dio/dio.dart';

import '../components/error_snackbar.dart';

handleError({required DioError error}) {
  if (error.type == DioErrorType.other) {
    errorSnackbar(
      'Anda tidak terhubung dengan internet',
    );
  } else {
    errorSnackbar(
      'Sedang terjadi masalah, coba lagi beberapa saat',
    );
  }
}
