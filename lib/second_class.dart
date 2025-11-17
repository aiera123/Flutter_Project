import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  int counter1 = 0;
  int counter = 1;
  bool isSubmitted = false;

  void incrementCounter() {
    setState(() {
      if (counter1 < 30) {
        counter1++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter1 > 0) {
        counter1--;
      }
    });
  }

  void multiplyCounter() {
    setState(() {
      if (counter > 0 && counter <= 30) {
        counter *= 2;
      }
    });
  }

  void divideCounter() {
    setState(() {
      if (counter >= 2) {
        counter ~/= 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFECE3),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Stateful Widget Example ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff313647),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xff313647)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Increase or decrease the counter by 1',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff313647),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$counter1',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff313647),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.all(12),
                          shape: const CircleBorder(),
                          elevation: 1,
                        ),
                        onPressed: incrementCounter,
                        child: Icon(Icons.add, size: 24, color: Colors.white),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: const EdgeInsets.all(12),
                          shape: const CircleBorder(),
                          elevation: 1,
                        ),
                        onPressed: decrementCounter,
                        child: Icon(
                          Icons.remove,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xff313647)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Multiply or divide the counter by 2',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff313647),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$counter',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff313647),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.all(12),
                          shape: const CircleBorder(),
                          elevation: 1,
                        ),
                        onPressed: multiplyCounter,
                        child: Text(
                          'x2',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: const EdgeInsets.all(12),
                          shape: const CircleBorder(),
                          elevation: 1,
                        ),
                        onPressed: divideCounter,
                        child: Text(
                          '÷2',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            isSubmitted
                ? Text(
              'The add/subs counter is $counter1 and the \nmul/div counter is $counter',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
                : SizedBox.shrink(),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSubmitted = !isSubmitted;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff313647),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}