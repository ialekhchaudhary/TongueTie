import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';

class AboutUsScreen extends StatefulWidget {
  static var routename;

  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('Learn, Explore, Connect'),
              _sectionContent('Our Mission:', 'At Tongue Tie, our mission is to empower individuals around the globe to break language barriers with ease and confidence. We aim to provide innovative, accessible, and engaging language learning tools that open doors to new opportunities and cultural exchanges.'),
              _sectionContent('Our Vision:', 'We envision a world where language learning connects people across cultures without boundaries. Our goal is to be at the forefront of educational technology, making learning languages as natural and enjoyable as having a conversation with a friend.'),
              _sectionContent('Our Story:', 'Founded by language enthusiasts and tech innovators, Tongue Tie started as a small project driven by a passion for languages and a dream to bring people together. Today, we are proud to support thousands of learners as they embark on their own journeys to fluency and cultural proficiency.'),
              _sectionList('Our Story:', [
                'Personalized Learning: Customized lessons tailored to meet your individual learning pace and preferences.',
                'Cultural Immersion: Each lesson is infused with cultural insights, allowing you to not only learn a language but also understand the people who speak it.',
                'Community Focus: Join a vibrant community of fellow learners who motivate and inspire each other every day.',
                'Tech-Driven: Utilizing the latest in educational technology to make learning efficient and retention lasting.',
              ]),
              _sectionList('Our Values:', [
                'Inclusivity: We believe in the power of diversity and strive to make language learning accessible to everyone, regardless of background.',
                'Innovation: Continuously pushing the boundaries of what\'s possible in language education.',
                'Quality: Committed to providing the highest quality content and learning experience.',
                'Passion: Fueled by our love for languages and the stories they tell.',
              ]),
              _sectionContent('Join Us:', 'We\'re always looking for talented individuals who are passionate about making a difference. Visit our Careers page to find out how you can contribute to our journey.'),
              _sectionContent('Contact Information:', 'Feel free to reach out with any questions or feedback.\nEmail: support@tonguetie.com\nPhone: +977-9863370955\nAddress: Mahakabi Marg, Gyaneshwor, Kathmandu'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }

  Widget _sectionContent(String header, String content) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(content),
        ],
      ),
    );
  }

  Widget _sectionList(String header, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('• $item'),
          )).toList(),
        ],
      ),
    );
  }
}
