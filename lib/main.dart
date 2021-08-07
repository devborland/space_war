import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Center(
      child: Text(
        'GAME',
        // style: TextStyle(color: Colors.green),
      ),
    ),
  ));
}
