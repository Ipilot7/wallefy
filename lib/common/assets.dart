abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

// ignore: library_private_types_in_public_api
  static _Lottie get lotties => const _Lottie();

  // ignore: library_private_types_in_public_api
  // static _ChannelsList get channelList => _ChannelsList();

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get logo => "$basePath/logo.png";

  
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get backgroudImage => "$basePath/background.png";

  String get backgroudDesctopImage => "$basePath/background_desctop.png";
}

class _Lottie extends _AssetsHolder {
  const _Lottie() : super('assets/lottie');

  String get success => "$basePath/success.json";
  String get error => "$basePath/error.json";
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');
}
