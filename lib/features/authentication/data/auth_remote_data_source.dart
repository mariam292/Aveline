import 'dart:developer';

import 'package:dio/dio.dart';

class AuthRemoteDataSource {
  final Dio dio = Dio();

  //*login data

  Future<Response> loginDataSource({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        'https://accessories-eshop.runasp.net/api/auth/login',
        data: {'email': email, 'password': password},
      );

      return response;
    } on DioException catch (e) {
      log('login error: ${e.response?.data ?? e.message}');
      rethrow;
    }
  }
}
