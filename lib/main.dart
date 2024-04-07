import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: currency());
  }
}
