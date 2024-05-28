import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:swifty_companion/commn/interceptors/api_interceptor.dart';
import 'package:swifty_companion/utils/typedefs.dart';

final kBaseOptions = BaseOptions(
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 5),
  contentType: Headers.jsonContentType,
  extra: {
    'requiresAuthToken': true,
  },
);

class DioService {
  final Dio _dio = Dio(kBaseOptions); // init dio instance

  final String _host = "https://api.intra.42.fr/v2";
  final BuildContext context;

  DioService({
    required this.context,
    Iterable<Interceptor>? interceptors,
    HttpClientAdapter? httpClientAdapter,
  }) {
    _dio.interceptors.add(
      ApiInterceptor(
        context: context,
      ),
    );
  }

  Future<Response<JSON>> get<R>({
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.get<JSON>(
      _host + endpoint,
      queryParameters: queryParams,
      options: options,
      cancelToken: cancelToken,
    );
    return response;
  }
}
