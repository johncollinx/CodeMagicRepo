import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About Me',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              '''Hi, I’m John Climel — a passionate web developer with entrepreneurial spirit and a constant drive to learn and grow. I’ve recently expanded into Flutter development, building beautiful, functional cross-platform mobile apps. I hold a B.Sc. in Computer Science from the University of Abuja.

I’m a strong advocate for equality and proudly align with feminist values. Outside of tech, I’m free-spirited, fun-loving, and adventurous — passionate about music, sports, movies, literature, science & tech, and the arts.

Above all, I’m a people person, always eager to connect, collaborate, and create.''',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
