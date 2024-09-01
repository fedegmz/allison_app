import 'package:flutter/material.dart';
import 'src/screens/home_screen.dart';
import 'src/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:allison_app/src/providers/auth_provider.dart'; // Asegúrate de usar el nombre correcto de tu proyecto


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
