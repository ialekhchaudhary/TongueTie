import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  static var routename;

  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Text('Effective Date: 2024.12.22', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          _buildSectionTitle('Introduction:'),
          _buildSectionContent('Welcome to Tongue Tie! We respect your privacy and are committed to protecting your personal information. This policy outlines how we handle your data to provide a secure and effective language learning experience.'),
          _buildSectionTitle('Information We Collect:'),
          _buildSectionContent('Personal Information: Includes your name, email address, and contact details provided during registration.'),
          _buildSectionContent('Usage Data: Information on how you interact with our services, such as course progress, time spent on the app, and preferences.'),
          _buildSectionContent('Device Information: We may collect data from your device including IP address, operating system, browser type, and device identifiers.'),
          _buildSectionTitle('How We Use Your Information:'),
          _buildSectionContent('To Provide Services: To manage your account, provide course content, and personalize your learning experience.'),
          _buildSectionContent('Communication: To send you important updates about the app, service changes, or security alerts.'),
          _buildSectionContent('Improvement: We use feedback and usage data to improve our services and develop new features.'),
          _buildSectionTitle('Sharing Your Information:'),
          _buildSectionContent('We do not sell your personal data. We may share information with third-party service providers who perform services on our behalf, such as hosting, data analysis, and marketing assistance. These parties are bound by confidentiality agreements to ensure the security of your data.'),
          _buildSectionTitle('Data Security:'),
          _buildSectionContent('We implement strong security measures to protect your data from unauthorized access, alteration, disclosure, or destruction. These include encryption, firewalls, and secure server hosting.'),
          _buildSectionTitle('Cookies and Similar Technologies:'),
          _buildSectionContent('We use cookies to enhance your experience by remembering your preferences and visits. You can set your browser to reject all cookies or to indicate when a cookie is being sent.'),
          _buildSectionTitle('Changes to Our Privacy Policy:'),
          _buildSectionContent('We may update this policy from time to time. We will notify you of any changes by posting the new policy on this page. We encourage you to review this policy periodically for any changes.'),
          _buildSectionTitle('Contact Us:'),
          _buildSectionContent('If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at privacy@tonguetie.com.'),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(content, style: TextStyle(fontSize: 16, height: 1.5)),
    );
  }
}
