/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple_logo.png
  AssetGenImage get appleLogo =>
      const AssetGenImage('assets/images/apple_logo.png');

  /// File path: assets/images/cmr_flag.jpg
  AssetGenImage get cmrFlag =>
      const AssetGenImage('assets/images/cmr_flag.jpg');

  /// File path: assets/images/google_logo.png
  AssetGenImage get googleLogo =>
      const AssetGenImage('assets/images/google_logo.png');

  /// Directory path: assets/images/items
  $AssetsImagesItemsGen get items => const $AssetsImagesItemsGen();

  /// File path: assets/images/iyo_blue_logo.png
  AssetGenImage get iyoBlueLogo =>
      const AssetGenImage('assets/images/iyo_blue_logo.png');

  /// File path: assets/images/iyo_white_logo.png
  AssetGenImage get iyoWhiteLogo =>
      const AssetGenImage('assets/images/iyo_white_logo.png');

  /// File path: assets/images/location_setup.png
  AssetGenImage get locationSetup =>
      const AssetGenImage('assets/images/location_setup.png');

  /// File path: assets/images/shop_banner.png
  AssetGenImage get shopBanner =>
      const AssetGenImage('assets/images/shop_banner.png');

  /// File path: assets/images/signup_banner.png
  AssetGenImage get signupBanner =>
      const AssetGenImage('assets/images/signup_banner.png');

  /// File path: assets/images/success_mark.png
  AssetGenImage get successMark =>
      const AssetGenImage('assets/images/success_mark.png');

  /// File path: assets/images/welcome_bg.jpg
  AssetGenImage get welcomeBg =>
      const AssetGenImage('assets/images/welcome_bg.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        appleLogo,
        cmrFlag,
        googleLogo,
        iyoBlueLogo,
        iyoWhiteLogo,
        locationSetup,
        shopBanner,
        signupBanner,
        successMark,
        welcomeBg
      ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/cart_icon.svg
  String get cartIcon => 'assets/svgs/cart_icon.svg';

  /// File path: assets/svgs/explore_icon.svg
  String get exploreIcon => 'assets/svgs/explore_icon.svg';

  /// File path: assets/svgs/favorite_icon.svg
  String get favoriteIcon => 'assets/svgs/favorite_icon.svg';

  /// File path: assets/svgs/shop_icon.svg
  String get shopIcon => 'assets/svgs/shop_icon.svg';

  /// File path: assets/svgs/user_icon.svg
  String get userIcon => 'assets/svgs/user_icon.svg';

  /// List of all assets
  List<String> get values =>
      [cartIcon, exploreIcon, favoriteIcon, shopIcon, userIcon];
}

class $AssetsImagesItemsGen {
  const $AssetsImagesItemsGen();

  /// File path: assets/images/items/apple.png
  AssetGenImage get apple =>
      const AssetGenImage('assets/images/items/apple.png');

  /// File path: assets/images/items/banana.png
  AssetGenImage get banana =>
      const AssetGenImage('assets/images/items/banana.png');

  /// File path: assets/images/items/ginger.png
  AssetGenImage get ginger =>
      const AssetGenImage('assets/images/items/ginger.png');

  /// File path: assets/images/items/pepper.png
  AssetGenImage get pepper =>
      const AssetGenImage('assets/images/items/pepper.png');

  /// List of all assets
  List<AssetGenImage> get values => [apple, banana, ginger, pepper];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
