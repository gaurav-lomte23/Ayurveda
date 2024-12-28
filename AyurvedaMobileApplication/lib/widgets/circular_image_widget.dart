import 'package:flutter/material.dart';

class CircularImagePlaceholder extends StatelessWidget {
  final String imageUrl;
  final double diameter;

  const CircularImagePlaceholder({
    super.key,
    required this.imageUrl,
    required this.diameter,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: diameter,
        height: diameter,
        color: Colors.grey[200],
        child: imageUrl != ""
            ? Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image, size: 50, color: Colors.grey),
              )
            : Icon(Icons.image, size: 0.6*diameter, color: Colors.grey),
      ),
    );
  }
}