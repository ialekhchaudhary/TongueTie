import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';

import '../core/constants/color_constants.dart';
import '../core/utils/util.dart';
import '../features/widgets/responsive_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<String> segments = ['Today', 'Weekly', 'Monthly'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText(
                  'Discover Languages',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textColor: Color(kPrimaryTextCol),
                ),
                SizedBox(height: 8),
                ResponsiveText(
                  'Hello Alekh! Ready to learn something new today?',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: Color(kSecondaryTextCol),
                ),
                SizedBox(height: 24),
                _buildSectionTitle('Daily Lessons'),
                _buildHorizontalList(width, 'lesson', 4),
                _buildSectionTitle('Quick Practice'),
                _buildHorizontalList(width, 'practice', 2),
                _buildSectionTitle('Explore Cultures'),
                _buildHorizontalList(width, 'culture', 2),
                _buildSectionTitle('Progress Tracker'),
                _buildProgressTracker(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveText(
          title,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          textColor: Color(kPrimaryTextCol),
        ),
        SizedBox(height: 8),
        ResponsiveText(
          'Jump into today’s lesson tailored just for you.',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          textColor: Color(kSecondaryTextCol),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildHorizontalList(double width, String category, int count) {
    return Container(
      height: 150, // Adjust based on content
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count,
        itemBuilder: (context, index) {
          return Container(
            width: width * 0.63,
            // padding: EdgeInsets.only(right: 16),
            child: Card(
              child: Row(
                children: [
                  Image.asset(Assets.images
                      .lesson), // Ensure your assets are correctly linked
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProgressTracker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Progress Tracker',
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        // Text('See how far you’ve come and where to go next.'),
        SizedBox(height: 10),
        ToggleButtons(
          borderColor: Colors.grey,
          fillColor: Colors.orange,
          selectedBorderColor: Colors.orange,
          selectedColor: Colors.white,
          borderRadius: BorderRadius.circular(30),
          isSelected:
              List.generate(segments.length, (index) => index == selectedIndex),
          onPressed: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: segments
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(e),
                  ))
              .toList(),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _infoCard(String data, String title, IconData icon) {
    return Card(
      elevation: 2,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 30, color: Theme.of(context).primaryColor),
            SizedBox(height: 8),
            Text(data,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(title, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
