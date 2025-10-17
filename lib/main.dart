import 'package:flutter/material.dart';
import 'package:sample/svgs/sample_svg.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GeneratedSVG(),
              SizedBox(
                height: 40,
              ),
              Text(
                "Hello World",
                style: TextStyle(fontFamily: 'Inter', fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
