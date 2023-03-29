import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pkkfirdaus/screens/splashscreen.dart';
import 'package:pkkfirdaus/screens/components/connectionstatus.dart';

void main() async {
  ConnectionStatusSingleton connectionStatus = ConnectionStatusSingleton.getInstance();
  connectionStatus.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PKK Firdaus',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
