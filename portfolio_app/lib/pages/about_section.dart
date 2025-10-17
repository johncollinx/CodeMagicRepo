import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
             Hi, I’m John Climel — a passionate web developer with entrepreneurial spirit and a constant drive to learn and grow. I’ve recently expanded into Flutter development, building beautiful, functional cross-platform mobile apps. I specialize in UI/UX design and love creating digital experiences that are both intuitive and impactful.
I hold a B.Sc. in Computer Science from the University of University. I'm also a strong advocate for equality and proudly align with feminist values. Beyond the code, I’m a free-spirited, fun-loving, and adventurous individual with a wide range of interests — from music, sports, and movies, to literature, science & tech, and the arts.
Above all, I’m a people person, always looking for the good in others and eager to connect, collaborate, and create.
 style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
