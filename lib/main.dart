import 'package:flutter/material.dart';
import 'package:sample/svgs/sample_svg.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GeneratedSVG(),
        ),
      ),
    ),
  );
}
