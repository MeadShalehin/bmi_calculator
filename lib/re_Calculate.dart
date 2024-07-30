import 'package:flutter/material.dart';

class re_calculate extends StatefulWidget {
  final String result;

  re_calculate({required this.result});

  @override
  State<re_calculate> createState() => _re_calculateState();
}

class _re_calculateState extends State<re_calculate> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.result);
  }
  String _getMessageFromResult(String result) {
    double bmi = double.tryParse(result) ?? 0;
    print(bmi);
    if (bmi < 17) {
      return "You are underweight. Please consider consulting with a healthcare professional.";
    } else if (bmi >= 18 && bmi <= 25) {
      return "You have a healthy weight. Keep up the good work!";
    } else if (bmi >= 26 && bmi < 31) {
      return "You are overweight. It's important to consider your diet and exercise habits.";
    } else { // BMI is 30.0 or higher
      return "You are obese. It's crucial to consult with a healthcare professional.";
    }
  }
  @override
  Widget build(BuildContext context) {
    // Determine the appropriate message based on the result
    String message = _getMessageFromResult(widget.result);



    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(16, 19, 39, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),


            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Your BMI is : ${widget.result}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),

                  SizedBox(height: 10), //
                  Text(
                    message, // Display  result
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.pinkAccent,
                  ),
                  child: Center(
                    child: Text(
                      "RE_Calculate",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
