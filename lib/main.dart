import 'package:flutter/material.dart';
import 'package:name_route_demo/models/car_model.dart';
import 'package:name_route_demo/pages/car_page.dart';
import 'package:name_route_demo/routes/route_name.dart';
import 'package:name_route_demo/routes/app_router.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteName.navigationPageRoute,
    onGenerateRoute: AppRouter.generateRoute,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Just an idea in flutter using',
            ),
            Text(
              'Name Route',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(
          context,
          RouteName.car,
          arguments: CarPageConstructor(
            carModel: CarModel(
              id: "1",
              name: "Urus",
              brand: "Lamborghini",
            ),
          ),
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
