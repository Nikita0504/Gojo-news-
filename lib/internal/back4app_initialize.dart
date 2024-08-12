import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Back4app {
  static Future<void> initParse() async {
    const keyApplicationId = 'MottOpKe4uXt7yc9gilLf7ZqwVN7Yhq7z2vtrV26';
    const keyClientKey = 'eQgkoynVrncNXN2qDMCVpYfedOHl069fV0jIZvJs';
    const keyParseServerUrl = 'https://parseapi.back4app.com';
    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, autoSendSessionId: true);
  }
}
