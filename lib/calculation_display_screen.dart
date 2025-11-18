
import 'package:flutter/material.dart';

// Import your calculation classes
import 'substraction_class.dart';
import 'multiplication_class.dart';
import 'simple_interest_class.dart';

class CalculationDisplayScreen extends StatelessWidget {
 CalculationDisplayScreen({super.key});
  // Subtraction
  static const double minuend = 150;
  static const double subtrahend = 45;

  // Multiplication
  static const double factorA = 12;
  static const double factorB = 7;

  // Simple Interest (P, T, R)
  static const double principal = 10000;
  static const double timeYears = 5;
  static const double ratePercent = 6;


  final double subtractionResult = SubtractionClass.subtract(minuend, subtrahend);
  final double multiplicationResult = MultiplicationClass.multiply(factorA, factorB);

  final double simpleInterestResult = SimpleInterestClass.calculateSimpleInterest(
    principal: principal,
    time: timeYears,
    rate: ratePercent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Math Operations'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCalculationCard(
              title: '➖ Subtraction',
              input: '$minuend - $subtrahend',
              result: subtractionResult,
            ),
            const SizedBox(height: 20),
            _buildCalculationCard(
              title: '✖️ Multiplication',
              input: '$factorA * $factorB',
              result: multiplicationResult,
            ),
            const SizedBox(height: 20),
            _buildSimpleInterestCard(),
          ],
        ),
      ),
    );
  }

  // Helper widget for Subtraction and Multiplication
  Widget _buildCalculationCard({
    required String title,
    required String input,
    required double result,
  }) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const Divider(),
            _buildResultRow('Input:', input, isFormula: false),
            const SizedBox(height: 8),
            _buildResultRow('Result:', result.toStringAsFixed(2)),
          ],
        ),
      ),
    );
  }

  // Helper widget specifically for Simple Interest
  Widget _buildSimpleInterestCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '💰 Simple Interest',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const Divider(),
            _buildResultRow('Formula:', 'SI = (P * T * R) / 100', isFormula: true),
            _buildResultRow('P (Principal):', '\$${principal.toStringAsFixed(2)}'),
            _buildResultRow('T (Time):', '${timeYears.toStringAsFixed(0)} years'),
            _buildResultRow('R (Rate):', '${ratePercent.toStringAsFixed(1)}%'),
            const SizedBox(height: 10),
            _buildResultRow(
              'Simple Interest (SI):',
              '\$${simpleInterestResult.toStringAsFixed(2)}',
              isResult: true,
            ),
          ],
        ),
      ),
    );
  }

  // Reusable row for displaying data
  Widget _buildResultRow(String label, String value, {bool isFormula = false, bool isResult = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: isResult ? FontWeight.bold : FontWeight.w600,
                color: isResult ? Colors.green.shade800 : Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontWeight: isResult ? FontWeight.bold : isFormula ? FontWeight.normal : FontWeight.w500,
                color: isResult ? Colors.green.shade800 : Colors.black54,
                fontStyle: isFormula ? FontStyle.italic : FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}