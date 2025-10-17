import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool _isDarkMode = false;

  void toggleTheme(bool isDark) {
    setState(() {
      _isDarkMode = isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John Climel | Portfolio',
      theme: ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: _isDarkMode ? Colors.grey[900] : Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(
        isDarkMode: _isDarkMode,
        onThemeToggle: toggleTheme,
      ),
    );
  }
}
