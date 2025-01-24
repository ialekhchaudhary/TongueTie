import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';

class LanguageLessonScreen extends StatelessWidget {
  final String language;
  final List<Map<String, dynamic>> lessons;

  const LanguageLessonScreen({Key? key, required this.language, required this.lessons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$language Lessons'),
        backgroundColor: Color(kAppBar), // A clean, elegant background color
        elevation: 0, // Flat appearance for minimalism
        centerTitle: true, // Center the title for better alignment
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.separated(
          itemCount: lessons.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey[300], // Subtle dividers between items
            thickness: 1,
          ),
          itemBuilder: (context, index) {
            Map<String, dynamic> lesson = lessons[index];
            return InkWell(
              onTap: () {
                // Show lesson details in a bottom sheet for a modern touch
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lesson['title'],
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            lesson['description'],
                            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                          ),
                          SizedBox(height: 16),
                          if (lesson['objectives'] != null) ...[
                            Text(
                              'Objectives:',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            for (String objective in lesson['objectives'])
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.check_circle, color: Colors.deepPurple, size: 18),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        objective,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                          SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lesson['title'],
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            lesson['description'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey[100], // Light background for better contrast
    );
  }
}
