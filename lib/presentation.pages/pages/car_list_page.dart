
import 'package:car_rent_app/data/models/car.dart';
import 'package:car_rent_app/presentation.pages/widgets/car_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CarListPage extends StatelessWidget {

  final List<Car> cars = [
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuner', distance: 870, fuelCapacity: 50, pricePerHour: 45),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choose Your Car', style: TextStyle(fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index){
          return CarCard(car: cars[index]);
        }),
    );
  }
}