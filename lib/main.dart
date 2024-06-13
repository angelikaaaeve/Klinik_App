import 'package:flutter/material.dart';
import 'package:klinik_app/ui/login.dart';
import 'helpers/user_info.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);

  runApp(MaterialApp(
      title: "Klinik App_by AFH",
      debugShowCheckedModeBanner: false,
      home: Login()));
}
