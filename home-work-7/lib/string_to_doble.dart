extension StringToDouble on String {
  double? toDouble() {
      return double.tryParse(this);
  }
}