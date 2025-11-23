extension StringExtensions on String {
  String get capitalize =>
      isEmpty ? this : this[0].toUpperCase() + substring(1);

  String get capitalizeFirst =>
      isEmpty ? this : this[0].toUpperCase() + substring(1).toLowerCase();

  String get capitalizeWords => split(' ')
      .map((word) {
        if (word.isEmpty) return word;
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      })
      .join(' ');

  String get firstWord => split(' ').first;
}
