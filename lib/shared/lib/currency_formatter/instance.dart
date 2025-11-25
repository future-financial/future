import 'package:currency_formatter/currency_formatter.dart';
import 'package:future/config/currency_config.dart';

class AppCurrencyFormatter {
  static String format(num amount, {bool? compact}) {
    return CurrencyFormatter.format(
      amount,
      CurrencyConfig.defaultCurrencyFormat,
      compact: amount.toString().length > 12 || compact == true,
      decimal: 5,
    );
  }
}
