import 'package:flutter/material.dart';
import 'about_section.dart';
import 'projects_section.dart';
import 'contact_section.dart';
import 'footer.dart';
import 'nav_drawer.dart';
import 'headshot.dart';

class HomePage extends StatelessWidget {
  final bool isDarkMode;
  final Function(bool) onThemeToggle;

  const HomePage({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        actions: [
          Row(
            children: [
              const Icon(Icons.light_mode),
              Switch(
                value: isDarkMode,
                onChanged: onThemeToggle,
              ),
              const Icon(Icons.dark_mode),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
      drawer: const NavDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Headshot(imagePath: 'pages/assets/headshot.jpg'), // <-- use local asset path here
            SizedBox(height: 16),
            AboutSection(),
            SizedBox(height: 24),
            ProjectsSection(),
            SizedBox(height: 24),
            ContactSection(),
            SizedBox(height: 24),
            Footer(),
          ],
        ),
      ),
    );
  }
}
