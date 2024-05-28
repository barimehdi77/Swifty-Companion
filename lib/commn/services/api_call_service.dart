import 'package:flutter/material.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:provider/provider.dart';
import 'package:swifty_companion/commn/services/dio_service.dart';
import 'package:swifty_companion/constants/environment/api_endpoints.dart';
import 'package:swifty_companion/features/login/data/services/authentication_service.dart';
import 'package:swifty_companion/features/profile/providers/user_provider.dart';
import 'package:swifty_companion/models/user_model.dart';

class ApiCallService {
  final BuildContext context;
  final DioService dioService;
  final AuthenticationService authenticationService;

  ApiCallService({
    required this.context,
    required this.dioService,
    required this.authenticationService,
  });

  Future<UserModel?> getMe() async {
    try {
      AccessTokenResponse? token = await authenticationService.getToken;

      if (token != null) {
        if (!token.isExpired()) {
          final apiResponse = await dioService.get(
            endpoint: ApiEndpoints.me,
          );
          if (apiResponse.data != null) {
            final UserModel user = UserModel.fromJson(apiResponse.data!);
            if (context.mounted) {
              context.read<UserProvider>().updateUser(user);
            }
            return user;
          }
        } else {
          throw Exception("Token is expired");
        }
      } else {
        throw Exception("There's no token");
      }
    } catch (e) {
      print('error(getMe): $e');
      throw Exception(e);
    }
    return null;
  }

  Future<UserModel?> searchWithLogin(String login) async {
    try {
      AccessTokenResponse? token = await authenticationService.getToken;

      if (token != null) {
        if (!token.isExpired()) {
          final apiResponse = await dioService.get(
            endpoint: ApiEndpoints.searchWithLogin.replaceAll(
              "{login}",
              login,
            ),
          );
          if (apiResponse.data != null) {
            final UserModel user = UserModel.fromJson(apiResponse.data!);
            if (context.mounted) {
              context.read<UserProvider>().updateUser(user);
            }
            return user;
          }
        } else {
          throw Exception("Token is expired");
        }
      } else {
        throw Exception("There's no token");
      }
    } catch (e) {
      print('error(getMe): $e');
      throw Exception(e);
    }
    return null;
  }
}
