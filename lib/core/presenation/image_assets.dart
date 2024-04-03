// ignore_for_file: non_constant_identifier_names

class ImageAssets {
  const ImageAssets._();

  static String get splash_background => 'splash_background'.png;
  static String get splash_thumbnail => 'splash_thumbnail'.png;
  static String get home => 'home'.svg;
  static String get character_box => 'character_box'.svg;
  static String get text_box => 'text_box'.svg;
  static String get cast => 'cast'.svg;
  static String get episodes => 'episodes'.svg;
  static String get locations => 'locations'.svg;
  static String get logo => 'logo'.svg;
  static String get back => 'back'.svg;
  static String get star => 'star'.svg;
  static String get star_fill => 'star_fill'.svg;
  static String get page_background => 'page_background'.png;
  static String get episode => 'episode'.svg;
  static String get gender => 'gender'.svg;
  static String get location => 'location'.svg;
  static String get origin => 'origin'.svg;
  static String get share => 'share'.svg;
  static String get species => 'species'.svg;
  static String get status => 'status'.svg;
  static String get search_bar => 'search_bar'.svg;
  static String get rectangle_box => 'rectangle_box'.svg;
  static String get arrow_down => 'arrow_down'.svg;
  static String get radio => 'radio'.svg;
  static String get radio_fill => 'radio_fill'.svg;
  static String get search => 'search'.svg;
}

extension on String {
  String get svg => 'assets/images/$this.svg';
  String get png => 'assets/images/$this.png';
}
