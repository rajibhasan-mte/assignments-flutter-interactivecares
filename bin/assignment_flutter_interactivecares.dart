import 'package:assignment_flutter_interactivecares/assignment_flutter_interactivecares.dart' as assignment_flutter_interactivecares;

/// --------------------------------------------------------------------------------------------
/// Author: Rajib Hasan
/// Submisson date:  07.01.2026
/// Submission to: interactivcecares flutter course
/// submission links: https://interactivecares.com/dashboard/334/content?tab=live&module=4727&id=16
///  ------------------- Assignment 2: BMI Calculator Using Dart Function -----------------------
/// BMI Calculation Function (40 Marks)
/// - BMI = weight / (height × height)
/// Part B: BMI Category Function (40 Marks)
/// Part C: Output Display (20 Marks)
/// -Print BMI value (up to 2 decimal places)***
/// Sample Output-
/// Your BMI is: 23.45
/// Category: Normal


double calculateBMI(double weight, double height){
  return weight / (height * height);
}


String getBMICategory(double BMI){

  if(BMI < 18.5) return 'Underweight';
  else if(BMI < 25) return 'Normal';
  else if (BMI < 30) return'Overweight';
  else return 'Obese';

}

void main(){

  double weight = 70;
  double height = 1.75;

  double BMI = calculateBMI(weight, height);
  print("Your BMI is: ${BMI.toStringAsFixed(2)}");

  String category = getBMICategory(BMI);
  print("Category: $category");

}
