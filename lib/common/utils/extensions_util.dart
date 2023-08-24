import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shankar_kakumani/common/utils/screen_utils.dart';

extension BooleanExtension on bool {
  bool not() {
    return !this;
  }
}

extension ScreenUtilsExtension on BuildContext {
  bool isKeyboardOpen() {
    final mediaQuery = MediaQuery.of(this);
    final isKeyboardOpen = mediaQuery.viewInsets.bottom > 0;
    return isKeyboardOpen;
  }

  double statusBarHeight() {
    return ScreenUtils.statusBarHeight(this);
  }

  double navigationBarHeight() {
    return ScreenUtils.navigationBarHeight(this);
  }

  double devicePixelRatio() {
    return ScreenUtils.devicePixelRatio(this);
  }

  double screenWidth() {
    return ScreenUtils.screenWidth(this);
  }

  double screenHeight() {
    return ScreenUtils.screenHeight(this);
  }

  double percentageHeight(double percent) {
    return (ScreenUtils.screenHeight(this) / 100) * percent;
  }
}

extension GetItemOrNull<T> on List<T>? {
  T? getItemOrNull(int position) {
    if (this == null) {
      return null;
    }
    if (this!.length > position) {
      return this![position];
    }
    return null;
  }
}

extension ExtendedIterable<Item> on Iterable<Item> {
  /// Like Iterable<T>.map but the callback has index as second argument
  Iterable<T> mapIndexed<T>(T Function(Item item, int index) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(Item item, int index) action) {
    var i = 0;
    forEach((e) => action(e, i++));
  }
}

extension LateInitializationCheck<T> on T {
  bool get isInitialized {
    try {
      // Attempt to access the value
      // If successful, the variable is considered initialized
      var _ = this;
      return true;
    } catch (_) {
      // If an exception is thrown, the variable is considered uninitialized
      return false;
    }
  }
}

extension PhoneNumberRefinerExtension on String? {
  String refineMobileNumber() {
    if (this == null) return '';

    String phoneNumber = this!;
    String countryCode = '+91';
    String formattedPhoneNumber;

    if (phoneNumber.startsWith(countryCode)) {
      formattedPhoneNumber = phoneNumber.replaceFirst(
        countryCode,
        '$countryCode ',
      );
    } else {
      formattedPhoneNumber = phoneNumber;
    }

    return formattedPhoneNumber;
  }
}

extension CurrencyExtension on num {
  String toCurrencyFormat() {
    final formatter = NumberFormat('#,##,###', 'en_IN');
    final formattedValue = formatter.format(this);

    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return formattedValue.replaceAllMapped(regex, (match) => '${match[1]},');
  }
}

extension CurrencyExtensionString on String? {
  String toCurrencyFormat() {
    var intValue = int.tryParse(this ?? '0');
    if (intValue == null || intValue <= 0) return "0";

    final formatter = NumberFormat('#,##,###', 'en_IN');
    final formattedValue = formatter.format(intValue);

    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return formattedValue.replaceAllMapped(regex, (match) => '${match[1]},');
  }
}

extension DoubleExtensions on double? {
  String refineDouble() {
    var value = this ?? 0;
    if (value == 0) return value.toString();

    var decimalValue = value - value.toInt().toDouble();
    var haveDecimals = decimalValue != 0;
    if (haveDecimals) {
      return value.toString();
    } else {
      return value.toInt().toString();
    }
  }
}

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}
