import 'package:dio/dio.dart';
import 'base_client.dart';
import 'endpoint.dart';



class BankApi {

  static Future<Response> getAllAccountBank({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getBankAccountsList,
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


  static Future<Response> getAccountDetails({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getBankAccountDetails,
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



  static Future<Response> deleteBank({
    required String id,
    required String token,
  }) async {
    try {
      return await BaseClient().delete(
        '${EndPoints.deleteBankAccount}$id',
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

  static Future<Response> addBankAccount({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.addBankAccount,
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

  static Future<Response> sendCodeVerification({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.addBankAccount,
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

  static Future<Response> editBankAccount({
    required String token,
    required String id,
    required String accountName,
    required String accountNumber,
    required String bankBranch,
    required String ledger,
    required String code,
  }) async {
    try {
      return await BaseClient().put(
        '${EndPoints.editBankAccount}$id',
        data: {
          "accountName" : accountName,
          "accountNumber" : accountNumber,
          "bankBranch" : bankBranch,
          "ledger" : ledger,
          "code" : code
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
