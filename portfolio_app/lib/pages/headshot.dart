import 'package:flutter/material.dart';

class Headshot extends StatelessWidget {
  final String imagePath;

  const Headshot({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: Colors.transparent,
    );
  }
}
