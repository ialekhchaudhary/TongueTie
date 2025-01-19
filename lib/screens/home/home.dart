import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';
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

  final List<Widget> _pages = [
    HomeContent(),
    LessonsScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
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

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int selectedIndex = 0;
  final List<String> segments = ['Today', 'Weekly', 'Monthly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText('Discover Languages',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    textColor: Color(kPrimaryTextCol)),
                SizedBox(height: 8),
                ResponsiveText(
                    'Hello Alekh! Ready to learn something new today?',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    textColor: Color(kSecondaryTextCol)),
                SizedBox(height: 24),
                _buildSectionTitle('Daily Lessons'),
                _buildHorizontalList('lesson', 4),
                _buildSectionTitle('Quick Practice'),
                _buildHorizontalList('practice', 2),
                _buildSectionTitle('Explore Cultures'),
                _buildHorizontalList('culture', 2),
                _buildSectionTitle('Progress Tracker'),
                _buildProgressTracker(),
                SizedBox(height: 20),
                _buildInfoCardsGrid(),
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
        ResponsiveText(title,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            textColor: Color(kPrimaryTextCol)),
        SizedBox(height: 8),
        ResponsiveText('Jump into today’s lesson tailored just for you.',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: Color(kSecondaryTextCol)),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildHorizontalList(String category, int count) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.63,
            child: Card(
              child: Row(
                children: [
                  Image.asset(Assets.images.lesson,
                      fit: BoxFit.cover), // Ensure these assets exist
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
        Center(
          child: ToggleButtons(
            borderColor: Colors.grey,
            fillColor: Colors.orange,
            selectedBorderColor: Colors.orange,
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(30),
            constraints: BoxConstraints.expand(
                height: 45, width: MediaQuery.of(context).size.width / 3.5),
            isSelected: List.generate(
                segments.length, (index) => index == selectedIndex),
            onPressed: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: segments.map((e) => Text(e)).toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildInfoCardsGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(8),
      children: [
        infoCard('10 min', 'Total Time Spent', Icons.access_time),
        infoCard('2', 'Completed', Icons.check_circle),
        infoCard('2', 'Achievements', Icons.emoji_events),
        infoCard('2', 'Personal Best', Icons.star),
      ],
    );
  }

  Widget infoCard(String data, String title, IconData icon) {
    return Card(
      elevation: 2,
      child: Container(
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
