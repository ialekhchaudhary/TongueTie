import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/core/utils/util.dart';

class MessageScreen extends StatefulWidget {
  static var routename;

  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      appBar: AppBar(
        backgroundColor: Color(kBackgroundCol),
        title: const Text('Messages'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // Implement mark all as read functionality
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: kHorizontalMargin, vertical: kVerticalMargin),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('Today', style: Theme.of(context).textTheme.titleLarge),
            ),
            _buildMessageCard(Icons.notifications,
                "Keep up with your language learning journey! Here's what's new and important."),
            _buildMessageCard(Icons.star_border,
                "Keep up with your language learning journey! Here's what's new and important."),
            _buildMessageCard(Icons.wb_sunny,
                "Keep up with your language learning journey! Here's what's new and important."),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Earlier',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            _buildMessageCard(Icons.notifications,
                "Keep up with your language learning journey! Here's what's new and important."),
            _buildMessageCard(Icons.star_border,
                "Keep up with your language learning journey! Here's what's new and important."),
            _buildMessageCard(Icons.wb_sunny,
                "Keep up with your language learning journey! Here's what's new and important."),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageCard(IconData icon, String message) {
    return Card(
      color: Color(kBackgroundCol),
      child: ListTile(
        leading: Icon(icon, color: Colors.amber),
        title: Text(message),
        subtitle: Text(
            'Just now'), // Example subtitle, replace with actual data if available
      ),
    );
  }
}
