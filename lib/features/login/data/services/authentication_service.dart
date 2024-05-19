import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';
import 'package:swifty_companion/constants/environment/api_endpoints.dart';

class AuthenticationService {
  late final OAuth2Helper _oAuth2helper;
  final client = OAuth2Client(
      authorizeUrl: ApiEndpoints.authorizeURL,
      tokenUrl: ApiEndpoints.tokenURL,
      redirectUri: dotenv.env['REDIRECTURL'].toString(),
      customUriScheme: dotenv.env['CUSTOMURISCHEME'].toString());

  AuthenticationService() {
    _oAuth2helper = OAuth2Helper(
      client,
      grantType: OAuth2Helper.authorizationCode,
      clientId: dotenv.env['CLIENT_ID'].toString(),
      clientSecret: dotenv.env['SECRET_CODE'].toString(),
      scopes: ['public'],
    );
  }

  OAuth2Helper get helper => _oAuth2helper;

  Future<bool> checkToken() async {
    try {
      AccessTokenResponse? token = await _oAuth2helper.getToken();
      if (token != null) {
        if (token.isExpired()) {
          await _oAuth2helper.refreshToken(token);
          token = await _oAuth2helper.getToken();
        }
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
