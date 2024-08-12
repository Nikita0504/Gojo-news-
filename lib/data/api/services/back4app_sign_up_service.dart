import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Back4appSignUpService {
  Future signUp({
    String? username,
    String? password,
    String? email,
  }) async {
    final user = ParseUser(username, password, email);

    var response = await user.signUp();
    if (response.success) {
      return 'success';
    } else {
      return response.error!.message;
    }
  }
}
