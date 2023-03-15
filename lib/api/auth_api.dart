import 'package:dio/dio.dart';

import 'base_client.dart';
import 'endpoint.dart';

class AuthApi {
  static Future<Response> logIn() async {
    try {
      return await BaseClient().post(
        EndPoints.loginEndPoint,
        data: {
          "email": "hebaskhail@gmail.com",
          "password": "Heba@123456"
        },
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> singUp() async {
    try {
      return await BaseClient().post(
        EndPoints.signUpEndPoint,
        data: {
          "firstName": "taymaa",
          "lastName": "Test",
          "email": "testtm@gmail.com",
          "mobile": "+9705970443455",
          "password": "Heba@123456",
          "country": "Palestine"
      },
      );
    } catch (e) {
      rethrow;
    }
  }
}
