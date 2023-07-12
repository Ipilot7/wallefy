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

  // String get logo => "$basePath/logo.png";
  String get arrowBack => "$basePath/arrow_back.svg";

  String get addPerson => "$basePath/ic_add_person.svg";

  String get add => "$basePath/ic_add.svg";

  String get arrowRight => "$basePath/ic_arrow_right.svg";

  String get calendar => "$basePath/ic_calendar.svg";

  String get card => "$basePath/ic_card.svg";

  String get home => "$basePath/ic_home.svg";

  String get person => "$basePath/ic_person.svg";

  String get share => "$basePath/ic_share.svg";

  String get statistics => "$basePath/ic_statistics.svg";

  String get tick => "$basePath/ic_tick.svg";

  String get tips => "$basePath/ic_tips.svg";

  String get addCards => "$basePath/ic_card.svg";

  String get facebook => "$basePath/ic_facebook.svg";

  String get profile => "$basePath/ic_profile.svg";

  String get telegram => "$basePath/ic_telegram.svg";

  String get viber => "$basePath/ic_viber.svg";

  String get wallet => "$basePath/ic_wallet.svg";

  String get like => "$basePath/ic_like.svg";

  String get security => "$basePath/ic_security.svg";

  String get arrowTop => "$basePath/arrow_top.svg";

  String get arrowDown => "$basePath/arrow_down.svg";

  String get userIcon => "$basePath/user.svg";

  String get camera => "$basePath/camera.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get cardBackgroudImage => "$basePath/card_bg_img.png";

  String get reach => "$basePath/img_reach.svg";

  String get seeFinance => "$basePath/img_see_finance.svg";

  String get takeFinance => "$basePath/img_take_finance.svg";

  String get defUser => "$basePath/ic_users.png";
}

class _Lottie extends _AssetsHolder {
  const _Lottie() : super('assets/lottie');

  String get success => "$basePath/success.json";
  String get error => "$basePath/error.json";
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');
}
