import 'package:flutter/material.dart';
import 'package:name_route_demo/models/car_model.dart';

class CarPage extends StatefulWidget {
  final CarPageConstructor? carPageConstructor;
  const CarPage(this.carPageConstructor, {Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((widget.carPageConstructor?.carModel?.name) ?? "car name"),
            Text(widget.carPageConstructor?.otherString ?? "other string"),
          ],
        ),
      ),
    );
  }
}

class CarPageConstructor {
  CarModel? carModel;
  String? otherString;

  CarPageConstructor({this.carModel, this.otherString});
}
