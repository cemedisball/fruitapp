import 'package:flutter/material.dart';
import 'package:fruitapp/FruitDataModel.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;

  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataModel.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(fruitDataModel.ImageUrl),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(255, 94, 231, 255),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  fruitDataModel.desc,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
