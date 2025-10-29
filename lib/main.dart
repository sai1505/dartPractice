import 'package:flutter/foundation.dart';

Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    if (kDebugMode) {
      print("Sending boat no $i");
      await Future.delayed(Duration(seconds: 3));
      yield i;
    }
  }
}

void main() async {
  Stream<int> boats = boatStream();
  boats.listen((receivedData) {
    if (kDebugMode) {
      print("Received Boat no $receivedData");
    }
  });
}
