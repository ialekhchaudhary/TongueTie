import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  static var routename;

  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Effective Date: 2024.12.22', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            _buildSectionTitle('Introduction:'),
            _buildSectionContent('Welcome to Tongue Tie! These terms and conditions outline the rules and regulations for the use of our language learning app. By accessing and using Tongue Tie, you accept these terms in full. If you disagree with any part of these terms, please do not use our app.'),
            _buildSectionTitle('Use of Our Service:'),
            _buildSectionContent('Eligibility: You must be at least 13 years old to use Tongue Tie. By agreeing to these terms, you represent that you are of legal age to form a binding contract.'),
            _buildSectionContent('Account Registration: You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.'),
            _buildSectionContent('Permissible Use: You agree to use Tongue Tie only for lawful purposes and in a way that does not infringe the rights of, restrict or inhibit anyone else\'s use and enjoyment of the app.'),
            _buildSectionTitle('Intellectual Property Rights:'),
            _buildSectionContent('All content provided on Tongue Tie, including text, graphics, logos, images, as well as the compilation thereof, and any software used on the site, is the property of Tongue Tie or its licensors and protected by copyright and intellectual property laws.'),
            _buildSectionTitle('User Contributions:'),
            _buildSectionContent('Any material you upload to Tongue Tie will be considered non-confidential and non-proprietary. You must ensure that this material complies with relevant laws and these terms.'),
            _buildSectionTitle('Limitation of Liability:'),
            _buildSectionContent('Disclaimer: Tongue Tie and its contents are provided "as is". We do not guarantee the accuracy, completeness, or usefulness of any information on the app. Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information found on Tongue Tie.'),
            _buildSectionTitle('Governing Law:'),
            _buildSectionContent('These terms will be governed by and interpreted in accordance with the laws of Nepal, and you submit to the non-exclusive jurisdiction of the state and federal courts located in Nepal for the resolution of any disputes.'),
            _buildSectionTitle('Changes to Terms:'),
            _buildSectionContent('We reserve the right, at our sole discretion, to modify or replace these terms at any time. If a revision is material, we will provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at our discretion.'),
            _buildSectionTitle('Contact Us:'),
            _buildSectionContent('If you have any questions or suggestions about these Terms & Conditions, please contact us at \'terms@tonguetie.com\'.'),
          ],
        ),
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
