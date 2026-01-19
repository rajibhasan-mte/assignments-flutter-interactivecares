///  ------------------- Assignment 3: Opp dart --------------------
/// Author: Rajib Hasan
/// Submisson date: 18.01.2026
/// Submisson deadline: 20.01.2026
/// Submission to: interactivcecares flutter course
/// submission links:
import 'dart:io';


/* ------------ 1. Cass and Encapsulation-------------*/
class Person {

  /* ------ Private variables ---------------*/
  final String _name;
  final int _age;

  /* ------- Constructor ------------------------------*/
  Person(this._name, this._age);

  /* ------- Public getters -----------------------------------*/
  String get name => _name;
  int get age => _age;

  /* -------- Method to be overridden---------------------------------------*/
  String getInfo() {
    return 'Name: $_name, Age: $_age';
  }
}



/* ------------------- 2. Inheritance and method overriding --------------*/
class Driver extends Person {
  final String vehicle;

  Driver(String name, int age, this.vehicle) : super(name, age);

  @override
  String getInfo() {
    return 'Name: $name, Age: $age, Vehicle: $vehicle';
  }
}

/* ------------------ 3. Abastraction and Polymorphism ----------------*/
abstract class Ride {
  double calculateFare(double distance);
}

class BikeRide extends Ride {
  static const double ratePerKm = 10;

  @override
  double calculateFare(double distance) {
    return distance * ratePerKm;
  }
}


/* -------------------Polymorphism function ----------------------------*/
void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print('Ride Fare: $fare');
}



/* ------------------- 4. Main Function ------------------------------*/
void main() {

  print('--- Ride System ---');
  /* ----------- Driver input ----------------------*/
  stdout.write('Enter driver name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter driver age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter vehicle type: ');
  String vehicle = stdin.readLineSync()!;

  /* ----------- Create driver object ----------------*/
  Driver driver = Driver(name, age, vehicle);

  print('\nDriver Information:');
  print(driver.getInfo());

  /* ----------- Distance input ----------------------*/
  stdout.write('\nEnter ride distance (km): ');
  double distance = double.parse(stdin.readLineSync()!);

  /* ----------- Create Ride object ------------------*/
  Ride bikeRide = BikeRide();

  /* ----------- Print fare using polymorphism ---------*/
  printFare(bikeRide, distance);
}
