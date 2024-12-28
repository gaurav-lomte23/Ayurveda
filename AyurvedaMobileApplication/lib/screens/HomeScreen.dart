import 'package:flutter/material.dart';
import 'package:ayurveda_mobile_app/constants/font_size.dart';

import '../widgets/bottom_navbar.dart';
import '../widgets/circular_image_widget.dart';
import '../constants/padding.dart';
import '../widgets/custom_fab.dart';
import '../widgets/rounded_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = 'Anonymous';
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: 0,
        onItemSelected: (int value) {
          null;
        },
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const IntrinsicHeight(
                  child: Padding(
                    padding: PaddingConstants.all16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WelcomeBar(name: name),
                        SizedBox(height: 16),
                        RoundedSearchBar(),
                        SizedBox(height: 16),
                        SlidingHighestScores(),
                        SizedBox(height: 16),
                        PreviousScans(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class WelcomeBar extends StatelessWidget {
  const WelcomeBar({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: FontSizeConstants.h2,
                        fontWeight: FontWeight.bold), // First part in indigo
                  ),
                  TextSpan(
                    text: name, // The name part
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: FontSizeConstants.h2,
                        fontWeight:
                            FontWeight.bold), // Different color for name
                  ),
                  const TextSpan(
                    text: ',', // Ending with an exclamation mark
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: FontSizeConstants.h2,
                        fontWeight: FontWeight
                            .bold), // Red color for the exclamation mark
                  ),
                ],
              ),
            ),
            const Text("Score your healthy meal",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: FontSizeConstants.h3,
                ))
          ],
        ),
        const CircularImagePlaceholder(imageUrl: '', diameter: 60),
      ],
    );
  }
}

class SlidingHighestScores extends StatelessWidget {
  const SlidingHighestScores({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Highest Scores...",
        style: TextStyle(color: Colors.black, fontSize: FontSizeConstants.h3),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height *
            0.4, // Height for the horizontal scrolling area
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // Horizontal scrolling
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: const FoodIcon(),
            );
          },
        ),
      ),
    ]);
  }
}

class FoodIcon extends StatelessWidget {
  const FoodIcon({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: GestureDetector(
        onTap: () {
          print('Button tapped');
        },
        child: Container(
          width: screenWidth * 0.6, // 60% of the screen width
          height: screenHeight * 0.4, // 40% of the screen height
          decoration: BoxDecoration(
            color: Colors.grey, // Background color of the button
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Click Me', // Button text
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PreviousScans extends StatelessWidget {
  const PreviousScans({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Text(
            "Previous Scans...",
            style: TextStyle(color: Colors.black, fontSize: FontSizeConstants.h3),
          ),
          Padding(padding: PaddingConstants.vertical16,
            child: GestureDetector(
              onTap: () {
                print('Button tapped');
              },
              child: Container(
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.grey, // Background color of the button
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Click Me', // Button text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
    );
  }
}
