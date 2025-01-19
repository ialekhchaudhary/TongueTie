import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  static var routename;

  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Feel free to reach out with any questions or feedback.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            _contactDetail('Email:', 'support@tonguetie.com'),
            _contactDetail('Phone:', '+977-9863370955'),
            _contactDetail('Address:', 'Mahakabi Marg, Gyaneshwor, Kathmandu')
          ],
        ),
      ),
    );
  }

  Widget _contactDetail(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 16),
          children: <TextSpan>[
            TextSpan(
                text: title, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' $content'),
          ],
        ),
      ),
    );
  }
}
