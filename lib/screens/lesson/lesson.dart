import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/screens/lesson/widgets/language_data.dart';
import 'package:tongue_tie_app/screens/lesson/widgets/language_lesson.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      appBar: AppBar(
        title: Text('Select a Language', style: TextStyle(color: Colors.black)),
        // backgroundColor:
        //     Color(kBrandColor), // Rich, deep color for a modern look
        // elevation: 2, // Flat design without shadow
      ),
      body: ListView.separated(
        itemCount: languageLessons.keys.length,
        itemBuilder: (context, index) {
          String language = languageLessons.keys.elementAt(index);
          return ListTile(
            title: Text(language,
                style: TextStyle(
                    fontSize: 18)), // Larger font size for readability
            trailing: Icon(Icons.keyboard_arrow_right,
                color:
                    Colors.indigo[900]), // Trailing icon for modern aesthetics
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageLessonScreen(
                    language: language,
                    lessons: languageLessons[language]!,
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) =>
            Divider(color: Colors.grey[300]), // Subtle dividers for separation
      ),
      // Light background for contrast and space
    );
  }
}
