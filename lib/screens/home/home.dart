import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/features/widgets/responsive_text.dart';
import 'package:tongue_tie_app/screens/lesson/lesson.dart';
import 'package:tongue_tie_app/screens/message/message.dart';
import 'package:tongue_tie_app/screens/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of widgets to be used as pages
  final List<Widget> _pages = [
    HomeContent(), // Actual home content for this screen
    LessonsScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      body: SafeArea(
        child: _pages[_currentIndex], // Display the page for the selected index
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red, // Highlight the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Lessons'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

// Home page content separated into its own widget for clarity
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            // Add more content here
          ],
        ),
      ),
    );
  }
}
