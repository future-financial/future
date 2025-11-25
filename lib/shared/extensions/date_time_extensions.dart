import 'package:easy_localization/easy_localization.dart';

extension DateTimeExtension on DateTime {
  /// Returns the full date in the format "MMMM D, YYYY"
  /// (e.g., "October 2, 2025").
  String toFullMonthDayYear() => DateFormat('MMMM d, yyyy').format(this);

  /// Returns the full date and time in the format "EEE, d MMM yyyy HH:mm"
  /// (e.g., "Mon, 2 Oct 2025 14:30").
  String toFullDateTime() => DateFormat('EEE, d MMM yyyy HH:mm').format(this);

  /// Returns the ISO 8601 string representation of the start of the day
  String startOfDayIsoString() {
    final startOfDay = DateTime(year, month, day);
    return startOfDay.toIso8601String();
  }

  /// Returns the ISO 8601 string representation of the end of the day
  String endOfDayIsoString() {
    final endOfDay = DateTime(year, month, day, 23, 59, 59, 999);
    return endOfDay.toIso8601String();
  }

  /// Checks if [DateTime] has the same day as [other].
  /// Returns `true` if year, month, and day are the same as [other],
  /// ignoring time.
  bool isSameDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;
}
