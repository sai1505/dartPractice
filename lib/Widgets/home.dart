import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/Widgets/list_provider.dart';
import 'package:sample/Widgets/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Center(
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
              Expanded(
                child: ListView.builder(
                  itemCount: numberProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        numberProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(bottom: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Second()),
                    ),
                  },
                  child: Text(
                    "Second",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
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
