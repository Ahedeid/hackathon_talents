import 'package:dio/dio.dart';
import 'endpoint.dart';



class BaseClient {
  BaseClient._();

  static final BaseClient _instanse = BaseClient._();

  factory BaseClient() {
    return _instanse;
  }

  final dio = Dio(BaseOptions(connectTimeout: EndPoints.connectTimeout, baseUrl: EndPoints.baseUrl,
    receiveDataWhenStatusError: true, receiveTimeout: EndPoints.receiveTimeout,
  ));

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters,
    Options? options, CancelToken? cancelToken, void Function(int, int)? onReceiveProgress,
  }) async {
    return await dio.get(
      path,
      cancelToken: cancelToken,
      queryParameters: queryParameters,
      onReceiveProgress: onReceiveProgress,
      options: options,
    );
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await dio.delete(path,
          data: data, queryParameters: queryParameters, options: options);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return await dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
