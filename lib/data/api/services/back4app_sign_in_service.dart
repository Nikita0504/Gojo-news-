import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Back4appSignInService {
  Future signIn({
    String? username,
    String? password,
  }) async {
    final user = ParseUser(username, password, null);

    var response = await user.login();
    if (response.success) {
      return 'success';
    } else {
      return response.error!.message;
    }
  }
}
