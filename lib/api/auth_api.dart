import 'package:dio/dio.dart';

import 'base_client.dart';
import 'endpoint.dart';

class AuthApi {
  static Future<Response> logIn({required String email,}) async {
    try {
      return await BaseClient().post(
        EndPoints.loginEndPoint,
        data: {
          "email": email,
        },
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> singUp({required String name, required String email,}) async {
    try {
      return await BaseClient().post(
        EndPoints.registerEndPoint,
        data: {
          "email": email,
          "name": name,
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
