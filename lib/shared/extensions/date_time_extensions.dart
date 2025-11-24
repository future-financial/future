import 'package:easy_localization/easy_localization.dart';

extension DateTimeExtension on DateTime {
  /// Returns the full date in the format "MMMM D, YYYY"
  /// (e.g., "October 2, 2025").
  String toFullMonthDayYear() => DateFormat('MMMM d, yyyy').format(this);

  /// Returns the full date and time in the format "EEE, d MMM yyyy HH:mm"
  /// (e.g., "Mon, 2 Oct 2025 14:30").
  String toFullDateTime() => DateFormat('EEE, d MMM yyyy HH:mm').format(this);

  /// Checks if [DateTime] has the same day as [other].
  /// Returns `true` if year, month, and day are the same as [other],
  /// ignoring time.
  bool isSameDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;
}
