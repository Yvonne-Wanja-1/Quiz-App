import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const Summary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Set up a SizedBox such that when the column exceeds the height of the SizedBox, scrolling is applied
      height: 300,
      child: SingleChildScrollView(
        // Takes a single child and makes it scrollable, in this case, the column that contains children.
        // It only accepts a single child
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Circular container for question numbers
                Container(
                  width: 30, // Sets the width of the circle
                  height: 30, // Sets the height of the circle
                  alignment: Alignment.center, // Centers the text inside
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Makes it a perfect circle
                    color: Colors.white, // Background color of the circle
                    border: Border.all(color: Colors.black, width: 2), // Optional border
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Number color inside the circle
                    ),
                  ),
                ),

                const SizedBox(width: 10), // Space between number and text

                Expanded(
                  // Ensures everything is well fitted
                  child: Column(
                    // You can use a column within a column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(height: 5),
                      Text(
                        "Your Answer: ${data['user_answer'] as String}",
                        style: const TextStyle(color: Colors.red),
                      ),
                      Text(
                        "Correct Answer: ${data['correct_answer'] as String}",
                        style: const TextStyle(color: Colors.deepPurpleAccent  ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
