import 'package:dio/dio.dart';

import 'base_client.dart';
import 'endpoint.dart';

class PostApi {
  static Future<Response> getAllPost({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getAllPostEndPoint,
        queryParameters: {
          "offset": offset,
          "limit": limit,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> deletePost({
    required String id,
    required String token,
  }) async {
    try {
      return await BaseClient().delete(
        '${EndPoints.deleteEndPoint}$id',
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> addPost({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.addPostEndPoint,
        data: data,
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> editPost({
    required String token,
    required String id,
    required String text,
  }) async {
    try {
      return await BaseClient().put(
        '${EndPoints.editPostEndPoint}$id',
        data: {
          "text": text,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> sharePost({
    required String id,
    required String token,
    required String email,
    required String permission,
  }) async {
    try {
      return await BaseClient().post(
         '${EndPoints.sharePostEndPoint}$id',
        data: {
          "email": email,
          "permission": permission // can be [read, write]
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
