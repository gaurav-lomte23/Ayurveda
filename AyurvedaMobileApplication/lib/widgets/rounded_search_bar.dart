import 'package:flutter/material.dart';
import 'package:ayurveda_mobile_app/constants/padding.dart';

class RoundedSearchBar extends StatelessWidget {
  const RoundedSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstants.all16, // Optional padding
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Check food...',
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: Colors.yellow[600], // Yellow background
              borderRadius: BorderRadius.circular(18.0), // Boxy corners
            ),
            child: IconButton(
              icon: const Icon(
                Icons.tune_rounded,
                color: Colors.white, // White icon
              ),
              onPressed: () {
                // Add your filter action here
                print('Filter button pressed');
              },
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0), // Reduced vertical padding to decrease height
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0), // Rounded corners for the TextField
            borderSide: BorderSide.none, // Remove border line
          ),
          filled: true,
          fillColor: Colors.white, // Light background color
        ),
      ),
    );
  }
}
