import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tongue_tie_app/core/constants/color_constants.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(kBackgroundCol),
        appBar: AppBar(
          title: Text(
            'Languages',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(kBrandColor),
          bottom: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(text: 'All Languages'),
              Tab(text: 'Beginner'),
              Tab(text: 'Intermediate'),
              Tab(text: 'Expert'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent(context, 'All Languages'),
            _buildTabContent(context, 'Beginner'),
            _buildTabContent(context, 'Intermediate'),
            _buildTabContent(context, 'Expert'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(BuildContext context, String category) {
    List<String> languages = [
      'English',
      'Spanish',
      'French',
      'German',
      'Chinese',
      'Japanese',
      'Russian',
      'Arabic',
      'Italian',
      'Portuguese',
      'Korean',
      'Turkish',
      'Swedish',
      'Hindi'
    ];

    // Randomly shuffle the list for a dynamic experience
    languages.shuffle(math.Random());

    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: languages.length, // Now dynamic based on the list
      itemBuilder: (context, index) {
        return _buildLessonCard(context, languages[index]);
      },
    );
  }

  Widget _buildLessonCard(BuildContext context, String language) {
    String imagePath =
        'assets/images/languages/${language.toLowerCase()}.png'; // Assuming a structured asset naming convention

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              language,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
