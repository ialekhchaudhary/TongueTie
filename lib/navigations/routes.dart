import 'package:flutter/material.dart';
import 'package:tongue_tie_app/screens/message/message.dart';
import 'package:tongue_tie_app/screens/profile/profile.dart';
import 'package:tongue_tie_app/screens/profile/widgets/aboutus.dart';
import 'package:tongue_tie_app/screens/profile/widgets/accountsettings.dart';
import 'package:tongue_tie_app/screens/profile/widgets/checkforupdate.dart';
import 'package:tongue_tie_app/screens/profile/widgets/contactus.dart';
import 'package:tongue_tie_app/screens/profile/widgets/faq.dart';

import '../screens/profile/widgets/privacypolicy.dart';
import '../screens/profile/widgets/termsandconditions.dart';

final Map<String, WidgetBuilder> routes = {
  ProfileScreen.routename: (context) => const ProfileScreen(),
  MessageScreen.routename: (context) => const MessageScreen(),
  AboutUsScreen.routename: (context) => const AboutUsScreen(),
  AccountSettingsScreen.routename: (context) => const AccountSettingsScreen(),
  CheckForUpdateScreen.routename: (context) => const CheckForUpdateScreen(),
  PrivacyPolicyScreen.routename: (context) => const PrivacyPolicyScreen(),
  TermsAndConditionsScreen.routename: (context) =>
      const TermsAndConditionsScreen(),
  FAQScreen.routename: (context) => const FAQScreen(),
  ContactUsScreen.routename: (context) => const ContactUsScreen(),
};
