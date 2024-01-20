import 'package:intl/intl.dart';

extension CurrencyFormatExtension on num {
  String toCurrency$({String symbol = '\$', String locale = 'en_US'}) {
    final formatter = NumberFormat.currency(
      symbol: symbol,
      locale: locale,
    );
    return formatter.format(this);
  }

  String toCurrencyRP({String symbol = 'Rp', String locale = 'id_ID'}) {
    final formatter = NumberFormat.currency(
      symbol: symbol,
      locale: locale,
    );
    return formatter.format(this);
  }
}
