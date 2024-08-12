import '../api/api_util.dart';

class Back4appDataRepository {
  final ApiUtil apiUtil;

  Back4appDataRepository({required this.apiUtil});

  Future signUp({
    String? username,
    String? password,
    String? email,
  }) {
    return apiUtil.signUp(username: username, password: password, email: email);
  }

  Future signIn({
    String? username,
    String? password,
  }) {
    return apiUtil.signIn(username: username, password: password);
  }
}
