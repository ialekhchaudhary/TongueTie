import '../constants/constant_path.dart';

class _AssetsImagesGen {
  const _AssetsImagesGen();

  String get logo => '$kImagesPath/logo.png';

  String get lesson => '$kImagesPath/lesson.png';
  String get user => '$kImagesPath/user.png';
  String get accountsettings => '$kImagesPath/accountsettings.png';
  String get aboutus => '$kImagesPath/aboutus.png';
  String get privacypolicy => '$kImagesPath/privacypolicy.png';
  String get termsandconditions => '$kImagesPath/termsandconditions.png';
  String get faq => '$kImagesPath/faq.png';
  String get checkforupdate => '$kImagesPath/checkforupdate.png';
  String get contactus => '$kImagesPath/contactus.png';
  String get logout => '$kImagesPath/logout.png';
  String get updatecheck => '$kImagesPath/updatecheck.png';
  String get signin => '$kImagesPath/signin.png';
}

class _AssetsSvgImagesGen {
  const _AssetsSvgImagesGen();

  String get phone => '$kSvgImagesPath/phone.svg';
  String get myprofile => '$kSvgImagesPath/myprofile.svg';
  String get longback => '$kSvgImagesPath/longback.svg';
}

class Assets {
  Assets._();
  static const images = _AssetsImagesGen();
  static const svgImages = _AssetsSvgImagesGen();
}
