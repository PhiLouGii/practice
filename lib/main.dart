import 'package:flutter/material.dart';
import 'package:practice/ui/main_view.dart'; // Import your MainView

void main() {
  runApp(const MyApp()); // Run the app without DevicePreview
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      home: const MainView(), // Set MainView as the home screen
    );
  }
}