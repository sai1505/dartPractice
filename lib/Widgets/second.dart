import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/Widgets/home.dart';
import 'package:sample/Widgets/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numberProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberProviderModel.add();
          },
          backgroundColor: Colors.black,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          toolbarHeight: 40,
        ),
        body: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Count Value",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                numberProviderModel.numbers.last.toString(),
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: SizedBox(
                  height: 20,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numberProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        '${numberProviderModel.numbers[index]}   ',
                        style: TextStyle(fontSize: 15),
                      );
                    },
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  ),
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
