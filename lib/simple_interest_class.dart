/// A class to calculate Simple Interest.
class SimpleInterestClass {

  /// Calculates the Simple Interest (SI).
  ///
  /// The formula is: SI = (P * T * R) / 100
  ///
  /// [principal] (P): The initial amount borrowed or invested.
  /// [time] (T): The time period in years.
  /// [rate] (R): The annual interest rate (in percent).
  static double calculateSimpleInterest({
    required double principal,
    required double time,
    required double rate,
  }) {

    if (principal < 0 || time < 0 || rate < 0) {
      return 0.0;
    }
    double simpleInterest = (principal * time * rate) / 100;
    return simpleInterest;
  }
}