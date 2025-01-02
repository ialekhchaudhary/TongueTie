import '../constants/constant_path.dart';

class _AssetsImagesGen {
  const _AssetsImagesGen();

  String get logo => '$kImagesPath/logo.png';

  String get lesson => '$kImagesPath/lesson.png';
}

class _AssetsSvgImagesGen {
  const _AssetsSvgImagesGen();

  String get search => '$kSvgImagesPath/search.svg';
}

class Assets {
  Assets._();
  static const images = _AssetsImagesGen();
  static const svgImages = _AssetsSvgImagesGen();
}
