import 'package:flutter/material.dart';
import 'package:swifty_companion/commn/services/dio_service.dart';

class DioProvider extends ChangeNotifier {
  final BuildContext context;
  DioProvider({
    required this.context,
  });

  // final DioService dioService = DioService(context: context);

  DioService createDioService(BuildContext context) {
    return DioService(context: context);
  }
}
