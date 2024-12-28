import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomAppBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 65,
      shape: const CircularNotchedRectangle(), // Notch for the FAB
      notchMargin: 12.0, // Margin around the notch
      color: Colors.yellow[600], // Background color of the app bar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equidistant spacing
        children: [
          _buildNavItem(
            icon: Icons.home,
            label: 'Home',
            isSelected: currentIndex == 0,
            onTap: () => onItemSelected(0),
          ),
          const SizedBox(width: 48), // Space for the FAB notch
          _buildNavItem(
            icon: Icons.history,
            label: 'History',
            isSelected: currentIndex == 1,
            onTap: () => onItemSelected(1),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.grey,
              fontSize: 12.0, // Label font size
            ),
          ),
        ],
      ),
    );
  }
}
