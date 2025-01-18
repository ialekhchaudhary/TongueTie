import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lessons'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All Courses'),
              Tab(text: 'Beginner'),
              Tab(text: 'Intermediate'),
              Tab(text: 'Expert'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent(context, 'All Courses'),
            _buildTabContent(context, 'Beginner'),
            _buildTabContent(context, 'Intermediate'),
            _buildTabContent(context, 'Expert'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(BuildContext context, String category) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 16, // Horizontal space between items
        mainAxisSpacing: 16, // Vertical space between items
        childAspectRatio: 0.8, // Aspect ratio of the cards
      ),
      itemCount: 4, // Adjust number based on your item count
      itemBuilder: (context, index) {
        return _buildLessonCard(context, index + 1);
      },
    );
  }

  Widget _buildLessonCard(BuildContext context, int lessonNumber) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              Assets.images.lesson, // Replace with actual image asset path
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lesson $lessonNumber',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
