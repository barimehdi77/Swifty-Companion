import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/commn/providers/dio_provider.dart';
import 'package:swifty_companion/commn/services/api_call_service.dart';
import 'package:swifty_companion/commn/services/dio_service.dart';
import 'package:swifty_companion/features/login/data/providers/authentication_provider.dart';
import 'package:swifty_companion/features/login/data/services/authentication_service.dart';

class ApiCallProvider extends ChangeNotifier {
  final BuildContext context;
  ApiCallProvider({
    required this.context,
  });

  ApiCallService createApiCallProvider(BuildContext context) {
    final DioService dioService =
        context.read<DioProvider>().createDioService(context);
    final AuthenticationService authenticationService =
        context.read<AuthenticationProvider>().authenticationService;
    return ApiCallService(
      context: context,
      dioService: dioService,
      authenticationService: authenticationService,
    );
  }
}
