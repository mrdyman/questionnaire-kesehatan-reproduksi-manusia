import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:questionnaire/components/error_snackbar.dart';
import 'package:questionnaire/models/jawaban.dart';
import 'package:questionnaire/models/mahasiswa.dart';
import 'package:questionnaire/models/raw_data_response.dart';
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
          ),
          data: {"username": username, "password": password});
      user = User.fromJson(jsonDecode(getData(response.data)));
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        errorSnackbar("Usernane / Password Salah!");
      }
    }
    return user;
  }

  Future<List<Soal>?> getSoal() async {
    List<Soal>? soal;
    try {
      Response response = await _dio.get("/soal",
          options: Options(
            headers: {"Accept": "application/json"},
          ));
      soal = listSoalFromJson(getData(response.data));
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return soal;
  }

  Future<Mahasiswa?> getMahasiswa() async {
    Mahasiswa? remaja;
    try {
      Response response = await _dio.get("/mahasiswa",
          options: Options(
            headers: {"Accept": "application/json"},
          ));
      remaja = Mahasiswa.fromJson(response.data);
    } on DioError catch (e) {
      debugPrint(e.message);
    }
    return remaja;
  }

  Future<Mahasiswa?> createMahasiswa({required Mahasiswa mahasiswa}) async {
    try {
      Response response = await _dio.post("/mahasiswa",
          options: Options(
            headers: {"Accept": "application/json"},
          ),
          data: jsonEncode(mahasiswa));
      return Mahasiswa.fromJson(jsonDecode(getData(response.data)));
    } on DioError catch (e) {
      debugPrint(e.message);
      return null;
    }
  }

  Future<bool> createJawaban({required Jawaban jawaban}) async {
    try {
      Response response = await _dio.post("/jawaban",
          options: Options(
            headers: {"Accept": "application/json"},
          ),
          data: jsonEncode(jawaban));
      if (response.statusCode == 201) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  Future<bool> createResult(
      {required int mahasiswaId, required int skor}) async {
    try {
      Response response = await _dio.post("/result",
          options: Options(
            headers: {"Accept": "application/json"},
          ),
          data: {
            "mahasiswa_id": mahasiswaId,
            "skor": skor,
          });
      if (response.statusCode == 201) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  Future<bool> deleteMahasiswa({required int mahasiswaId}) async {
    try {
      Response response = await _dio.delete("/mahasiswa",
          options: Options(
            headers: {"Accept": "application/json"},
          ),
          data: {"id": mahasiswaId});
      if (response.statusCode == 201) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      debugPrint(e.message);
      return false;
    }
  }
}
