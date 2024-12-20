// ignore_for_file: constant_identifier_names

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String DATE_FORMAT = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  String format({
    String pattern = DATE_FORMAT,
    String? locale,
  }) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}