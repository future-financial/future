import 'package:currency_formatter/currency_formatter.dart';
import 'package:future/app/environtment/env.dart';

class CurrencyConfig {
  static CurrencyFormat defaultCurrencyFormat = CurrencyFormat(
    symbol: Env.defaultSymbol,
    code: Env.defaultCurrency,
    negativeSignPlacement: NegativeSignPlacement.afterSymbol,
    decimalSeparator: '.',
    symbolSeparator: '',
    thousandSeparator: '.',
  );
}
