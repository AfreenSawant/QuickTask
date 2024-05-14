import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';


   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
    final keyApplicationId = 'x8JivYmHgyX2j83MIgVWdfWOdQFMJJFQQotniDQe';
     final keyClientKey = 'DcTQ31mTq26bxifNxOURjj2zhbaWwz0Ag7Kcud7u';
     final keyParseServerUrl = 'https://parseapi.back4app.com';

     await Parse().initialize(keyApplicationId, keyParseServerUrl,
         clientKey: keyClientKey, autoSendSessionId: true);
         var firstObject = ParseObject('QuickTask')
      ..set(
         'message', 'Hey ! First message from Flutter. Parse is now connected');
    await firstObject.save();
  
    print('done');
  

  }