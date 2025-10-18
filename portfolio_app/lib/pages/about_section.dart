import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  // Function to open/download CV
  void _downloadCV() async {
    const cvUrl = 'https://example.com/COLLINS_EHIMHEN_AMIOHU_CV.pdf'; // Replace with real CV URL
    final Uri url = Uri.parse(cvUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch CV link';
    }
  }

  // Helper function for external URLs
  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '''Hi, I’m Collins Ehimhen Amiohu — a tech-driven professional from Abuja, Nigeria. I have a background in web development, sales, marketing, and administration, and I’m currently pursuing a B.Sc. in Computer Science at the University of Abuja.

I’m an organized and analytical thinker who thrives on problem-solving, collaboration, and continuous learning. Beyond tech, I’m passionate about music, research, creativity, and connecting with people.''',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 20),

            // Soft Skills
            const Text(
              'Soft Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 10,
              runSpacing: 8,
              children: [
                Chip(label: Text('Teamwork')),
                Chip(label: Text('Leadership')),
                Chip(label: Text('Problem Solving')),
                Chip(label: Text('Time Management')),
                Chip(label: Text('Communication')),
                Chip(label: Text('Adaptability')),
              ],
            ),
            const SizedBox(height: 20),

            // Technical Skills
            const Text(
              'Technical Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 10,
              runSpacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('HTML/CSS/JavaScript')),
                Chip(label: Text('MongoDB')),
                Chip(label: Text('Git & GitHub')),
                Chip(label: Text('Microsoft Office')),
              ],
            ),
            const SizedBox(height: 24),

            // Download CV Button
            Center(
              child: ElevatedButton.icon(
                onPressed: _downloadCV,
                icon: const Icon(Icons.download),
                label: const Text('Download CV'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Social & Contact Buttons
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                children: [
                  ElevatedButton.icon(
                    onPressed: () =>
                        _launchUrl('https://github.com/ClimelEnterprise'),
                    icon: const Icon(Icons.code),
                    label: const Text('GitHub'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () =>
                        _launchUrl('https://www.linkedin.com/in/collinsamiohu'),
                    icon: const Icon(Icons.business_center),
                    label: const Text('LinkedIn'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _launchUrl(
                        'mailto:collinsamiohu@gmail.com?subject=Portfolio%20Contact'),
                    icon: const Icon(Icons.email),
                    label: const Text('Email'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
