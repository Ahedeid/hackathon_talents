import 'package:dio/dio.dart';
import 'base_client.dart';
import 'endpoint.dart';



class WithdrawApi {

  static Future<Response> withdrawalRequestDetails({

    required String token,
    required String id,
  }) async {
    try {
      return await BaseClient().get(
        '${EndPoints.getBankAccountsList}$id',
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


  static Future<Response> getWithdrawalRequestList({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getWithdrawalRequestList,
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


  static Future<Response> getLastWithdrawalRequest({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getLastWithdrawalRequest,
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

  static Future<Response> getOfficeList({
    required int offset,
    required int limit,
    required String token,
  }) async {
    try {
      return await BaseClient().get(
        EndPoints.getOfficeList,
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


  static Future<Response> requestCashWithdrawal({
    required String token,
    required String amount,
    required String officeId,
    required String recipientId,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.requestCashWithdrawal,
        data: {
          "amount": amount,
          "officeId": officeId,
          "recipientId": recipientId
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



  static Future<Response> requestBankWithdrawal({
    required String token,
    required dynamic data,
  }) async {
    try {
      return await BaseClient().post(
        EndPoints.requestBankWithdrawal,
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



  static Future<Response> confirmRecievePayout({
    required String token,
    required String withdrawId,
    required dynamic data ,
  }) async {
    try {
      return await BaseClient().put(
        '${EndPoints.confirmRecievePayout}$withdrawId',
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


  static Future<Response> cancelWithdrawRequest({
    required String token,
    required String withdrawId,
    required dynamic data ,
  }) async {
    try {
      return await BaseClient().put(
        '${EndPoints.cancelWithdrawRequest}$withdrawId',
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

}
