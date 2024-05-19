import 'package:flutter/material.dart';
import 'package:foodie/services/auth/auth_gate.dart';
import 'package:foodie/components/models/restaurant.dart';
import 'package:foodie/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        // theme providfer
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),

        // restaurent provider
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      // home: const DeliveryProgressPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
