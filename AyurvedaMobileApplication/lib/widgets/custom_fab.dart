import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final double size;
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  const CustomFloatingActionButton({
    super.key,
    this.size = 56.0, // Default size of the FAB
    this.icon = Icons.document_scanner,
    this.iconSize = 32.0, // Default icon size
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.white,
        elevation: 0.0, // Default to no shadow
        child: Icon(
          icon,
          size: iconSize,
          color: Colors.black,
        ),
      ),
    );
  }
}
