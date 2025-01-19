import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';
import 'package:tongue_tie_app/core/utils/util.dart';
import 'package:tongue_tie_app/features/widgets/responsive_text.dart';
import 'package:tongue_tie_app/screens/profile/widgets/aboutus.dart';
import 'package:tongue_tie_app/screens/profile/widgets/accountsettings.dart';
import 'package:tongue_tie_app/screens/profile/widgets/checkforupdate.dart';
import 'package:tongue_tie_app/screens/profile/widgets/contactus.dart';
import 'package:tongue_tie_app/screens/profile/widgets/faq.dart';
import 'package:tongue_tie_app/screens/profile/widgets/myprofile.dart';
import 'package:tongue_tie_app/screens/profile/widgets/privacypolicy.dart';
import 'package:tongue_tie_app/screens/profile/widgets/termsandconditions.dart';

class ProfileScreen extends StatefulWidget {
  static var routename;

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackgroundCol),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                height: height * 0.15,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                        ),
                        SizedBox(width: kHorizontalMargin * 2),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ResponsiveText(
                                'Alekh Chaudhary',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                textColor: Color(kPrimaryTextCol),
                              ),
                              Row(children: [
                                SvgPicture.asset(Assets.svgImages.phone),
                                SizedBox(width: kHorizontalMargin),
                                ResponsiveText('9876543210',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textColor: Color(kPrimaryTextCol)),
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin,
                    vertical: kVerticalMargin / 2),
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                // height: height * 0.5,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyProfileScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.user,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'My Profile',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => AccountSettingsScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.accountsettings,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'Accounts Settings',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => AboutUsScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.aboutus,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'About Us',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin,
                    vertical: kVerticalMargin / 2),
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                // height: height * 0.5,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicyScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.privacypolicy,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'Privacy Policy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    TermsAndConditionsScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.termsandconditions,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'Terms & Conditions',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => FAQScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.faq,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'FAQs',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kHorizontalMargin,
                    vertical: kVerticalMargin / 2),
                decoration: BoxDecoration(
                  color: Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                // height: height * 0.5,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin, vertical: kVerticalMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => CheckForUpdateScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.checkforupdate,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'Check For Update',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ContactUsScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.images.contactus,
                              height: MediaQuery.of(context).size.height * 0.06,
                            ),
                            SizedBox(width: kHorizontalMargin),
                            ResponsiveText(
                              'Contact Us',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              textColor: Color(kSecondaryTextCol),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: kVerticalMargin / 2,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.logout,
                            height: height * 0.06,
                          ),
                          SizedBox(
                            width: kHorizontalMargin,
                          ),
                          ResponsiveText(
                            'Log Out',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            textColor: Color(kSecondaryTextCol),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
