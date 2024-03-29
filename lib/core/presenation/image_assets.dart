// ignore_for_file: non_constant_identifier_names

class ImageAssets {
  const ImageAssets._();

  static String get splash_background => 'splash_background'.png;
  static String get splash_thumbnail => 'splash_thumbnail'.png;
}

extension on String {
  String get svg => 'assets/images/$this.svg';
  String get png => 'assets/images/$this.png';
}
