import 'package:car_rent_app/firebase_options.dart';
import 'package:car_rent_app/presentation.pages/pages/car_details_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  // For start the system instilization works before ui start.
  WidgetsFlutterBinding.ensureInitialized();
  // Adding firebase services in the app.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: CarDetailsPage(),
      );
  }
}
