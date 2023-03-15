import 'package:dio/dio.dart';
import 'base_client.dart';
import 'endpoint.dart';



class RecipientApi {

  static Future<Response> getRecipientList({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getRecipientList,
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


  static Future<Response> getRecipientDetails({
    required String token,
    required String recipientId,
  }) async {
    try {
      return await BaseClient().get(
        '${EndPoints.getRecipientDetails}$recipientId',
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



  static Future<Response> deleteRecipient({
    required String id,
    required String token,
  }) async {
    try {
      return await BaseClient().delete(
        '${EndPoints.deleteRecipient}$id',
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


  static Future<Response> sendCodeToAddEditRecipient({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.sendCodeToAddEditRecipient,
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

  static Future<Response> addRecipient({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.addRecipient,
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

  static Future<Response> updateRecipient({
    required String token,
    required String recipientId,
    required String code,
    required String mobile,
    required String idNumber,
    required String name,
  }) async {
    try {
      return await BaseClient().put(
        '${EndPoints.updateRecipient}$recipientId',
        data: {
          "code" : code,
          "mobile" : mobile,
          "idNumber" : idNumber,
          "name" : name
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
