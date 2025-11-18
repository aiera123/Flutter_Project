/// A class to perform subtraction operations.
class SubtractionClass {

  /// The operation is: [minuend] - [subtrahend]
  static double subtract(double minuend, double subtrahend) {
    return minuend - subtrahend;
  }
  static double subtractList(List<double> numbers) {
    if (numbers.isEmpty) {
      return 0.0;
    }
    double result = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      result -= numbers[i];
    }
    return result;
  }
}