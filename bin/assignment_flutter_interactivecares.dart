///  ------------------- Assignment 3: Opp dart --------------------
/// Author: Rajib Hasan
/// Submisson date: 18.01.2026
/// Submisson deadline: 20.01.2026
/// Submission to: interactivcecares flutter course
/// submission links:
import 'dart:io';


class Person {

  final String _name;
  final int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  String getInfo() {
    return 'Name: $_name, Age: $_age';
  }
}


class Driver extends Person {
  final String vehicle;

  Driver(String name, int age, this.vehicle) : super(name, age);

  @override
  String getInfo() {
    return 'Name: $name, Age: $age, Vehicle: $vehicle';
  }
}


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


void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print('Ride Fare: $fare');
}


void main() {


  stdout.write('Enter driver name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter driver age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter vehicle type: ');
  String vehicle = stdin.readLineSync()!;

  Driver driver = Driver(name, age, vehicle);

  print('\nDriver Information:');
  print(driver.getInfo());


  stdout.write('\nEnter ride distance (km): ');
  double distance = double.parse(stdin.readLineSync()!);

  Ride bikeRide = BikeRide();

  printFare(bikeRide, distance);
}
