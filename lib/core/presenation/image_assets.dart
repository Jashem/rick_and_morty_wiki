// ignore_for_file: non_constant_identifier_names

class ImageAssets {
  const ImageAssets._();

  static String get splash_background => 'splash_background'.png;
  static String get splash_thumbnail => 'splash_thumbnail'.png;
  static String get home => 'home'.svg;
  static String get cast => 'cast'.svg;
  static String get episodes => 'episodes'.svg;
  static String get locations => 'locations'.svg;
  static String get logo => 'logo'.svg;
  static String get page_background => 'page_background'.png;
}

extension on String {
  String get svg => 'assets/images/$this.svg';
  String get png => 'assets/images/$this.png';
}
