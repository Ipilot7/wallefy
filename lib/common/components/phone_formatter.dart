extension PhoneFormatter on String {
  String get phone {
    var code = substring(0, 2);
    var h = substring(2, 5);
    var s = substring(5, 7);
    var t = substring(7);
    return '+998 ($code) $h - $s - $t';
  }
}
