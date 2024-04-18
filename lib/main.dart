import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homescreencontroller.dart';
import 'package:flutter_application_1/view/homepage/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Fakestore());
}

class Fakestore extends StatelessWidget {
  const Fakestore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => homescreencontroller(),
        )
      ],
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
