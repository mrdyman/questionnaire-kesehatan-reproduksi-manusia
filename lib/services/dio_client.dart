import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:questionnaire/models/remaja.dart';
import 'package:questionnaire/models/soal.dart';

import '../models/user.dart';

class DioClient {
  String apikey = dotenv.env['MODE']! == "production"
      ? dotenv.env['PRODUCTION_API_KEY']!
      : dotenv.env['MODE']! == "dev"
          ? dotenv.env['DEV_API_KEY']!
          : dotenv.env['LOCAL_API_KEY']!;
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['MODE']! == "production"
          ? "${dotenv.env['PRODUCTION_BASE_URL']!}/api"
          : dotenv.env['MODE']! == "dev"
              ? "${dotenv.env['DEV_BASE_URL']!}/api"
              : "${dotenv.env['LOCAL_BASE_URL']!}/api",
      responseType: ResponseType.plain,
    ),
  )..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));

  Future<User?> login({
    required String username,
    required String password,
  }) async {
    User? user;
    try {
      Response response = await _dio.post("/login",
          options: Options(
            headers: {"Accept": "application/json"},
          ));
      user = User.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return user;
  }

  Future<Soal?> getSoal() async {
    Soal? soal;
    try {
      Response response = await _dio.get("/soal",
          options: Options(
            headers: {"Accept": "application/json"},
          ));
      soal = Soal.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return soal;
  }

  Future<Remaja?> getRemaja() async {
    Remaja? remaja;
    try {
      Response response = await _dio.get("/remaja",
          options: Options(
            headers: {"Accept": "application/json"},
          ));
      remaja = Remaja.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return remaja;
  }
}
