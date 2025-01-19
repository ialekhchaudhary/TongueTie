import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart'; // Ensure this path is correct and the asset provider is set up properly

class CheckForUpdateScreen extends StatefulWidget {
  static var routename; // Ensure this is properly assigned if used for routing

  const CheckForUpdateScreen({Key? key}) : super(key: key);

  @override
  State<CheckForUpdateScreen> createState() => _CheckForUpdateScreenState();
}

class _CheckForUpdateScreenState extends State<CheckForUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check for Updates', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(kBackgroundCol),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Use a placeholder if the image path is not correct or image is not available
            Image.asset(Assets.images.updatecheck,
                height: 250), // Corrected asset path
            SizedBox(height: 24),
            Text('Version 1.2.0',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Your Software is Up to Date',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
