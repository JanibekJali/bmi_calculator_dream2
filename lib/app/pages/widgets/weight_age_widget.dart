import 'package:flutter/material.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    required this.title,
    required this.middleTitle,
    this.remove,
    this.add,
    required this.tag1,
    required this.tag2,
  });
  final String title;
  final String middleTitle;
  final void Function()? remove;
  final void Function()? add;
  final Object tag1;
  final Object tag2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          Text(
            middleTitle.toUpperCase(),
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: tag1,
                onPressed: remove,
                child: Icon(
                  Icons.remove,
                  size: 50,
                ),
              ),
              FloatingActionButton(
                heroTag: tag2,
                onPressed: add,
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
