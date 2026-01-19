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
  @override
  double calculateFare(double distance) {
    return distance * 10;
  }
}

void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print('Ride Fare: $fare');
}

void main(){

  Driver driver = Driver('Rahim', 25, 'Bike');

  print(driver.getInfo());

  Ride bikeRide = BikeRide();

  printFare(bikeRide, 5);

}