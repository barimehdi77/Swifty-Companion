import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/features/login/data/providers/authentication_provider.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor({
    required this.context,
  }) : super();

  final BuildContext context;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final userToken = await context
        .read<AuthenticationProvider>()
        .authenticationService
        .getToken;
    print(userToken);
    if (options.extra.containsKey('requiresAuthToken')) {
      if (options.extra['requiresAuthToken'] == true) {
        options.headers.addAll(
          <String, Object?>{
            'Authorization': 'Bearer ${userToken?.accessToken ?? ""}'
          },
        );
      }
      options.extra.remove('requiresAuthToken');
    }
    return handler.next(options);
  }
}
