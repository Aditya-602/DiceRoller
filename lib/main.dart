import 'package:flutter/material.dart';
import 'package:first_app/grad_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradContainer(
          colors: [
            Color.fromARGB(255, 0, 10, 101),
            Color.fromARGB(221, 125, 0, 167),
          ],
        ),
      ),
    ),
  );
}
