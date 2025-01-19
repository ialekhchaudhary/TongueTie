import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  static var routename;

  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  // Creating a list of FAQs
  final List<Map<String, String>> faqs = [
    {
      'question': 'How does Tongue Tie help me learn a new language?',
      'answer':
          'Tongue Tie offers a variety of interactive lessons, practical exercises, and cultural insights to make language learning engaging and effective. Our approach combines reading, writing, listening, and speaking exercises that fit into your daily routine.'
    },
    {
      'question': 'Is Tongue Tie free to use?',
      'answer':
          'Tongue Tie offers both free and premium content. You can start with a free plan that includes basic lessons and features. For more advanced features and content, you can upgrade to our premium plan.'
    },
    {
      'question': 'Can I use Tongue Tie on multiple devices?',
      'answer':
          'Yes, your Tongue Tie account can be accessed on any device. Just log in with your credentials on any compatible device, and your progress will be synchronized across all devices.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(faqs[index]['question']!),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(faqs[index]['answer']!),
              )
            ],
          );
        },
      ),
    );
  }
}
