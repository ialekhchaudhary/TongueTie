import 'package:flutter/material.dart';
import 'package:tongue_tie_app/core/constants/color_constants.dart';
import 'package:tongue_tie_app/core/utils/asset_provider.dart';
import 'package:tongue_tie_app/features/widgets/responsive_text.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ResponsiveText(
          'About Us',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          textColor: Color(kBrandColor),
        ),
        leading: Image.asset(Assets.svgImages.longback),
      ),
    );
  }
}
