/// A class to perform multiplication operations.
class MultiplicationClass {
  static double multiply(double factor1, double factor2) {
    return factor1 * factor2;
  }
  static double multiplyList(List<double> numbers) {
    if (numbers.isEmpty) {
      return 0.0;
    }
    double product = 1.0;
    for (double number in numbers) {
      product *= number;
    }
    return product;
  }
}