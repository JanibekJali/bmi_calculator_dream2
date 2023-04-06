import 'package:bmi_calculator/app/pages/result_page.dart';
import 'package:flutter/material.dart';

import 'widgets/calculate_widget.dart';
import 'widgets/gender_container_widget.dart';
import 'widgets/weight_age_widget.dart';

const Color activeColor = Colors.blue;
const Color inactiveColor = Colors.teal;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heightValue = 70;
  int weight = 65;
  int age = 25;

  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211834),
      appBar: AppBar(
        backgroundColor: Color(0xff211834),
        title: Center(child: Text('Bmi Calcultar')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenderContainerWidget(
                tus: maleColor,
                onTap: () {
                  maleColor = activeColor;
                  femaleColor = inactiveColor;
                  setState(() {});
                },
                title: 'Male',
                icon: Icons.male,
              ),
              SizedBox(
                width: 20,
              ),
              GenderContainerWidget(
                tus: femaleColor,
                onTap: () {
                  femaleColor = activeColor;
                  maleColor = inactiveColor;
                  setState(() {});
                },
                title: 'FeMale',
                icon: Icons.female,
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      heightValue.toStringAsFixed(0),
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  max: 220,
                  min: 70,
                  value: heightValue,
                  thumbColor: Colors.red,
                  onChanged: (adanJildirdy) {
                    setState(() {
                      heightValue = adanJildirdy;
                    });
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WeightAgeWidget(
                tag1: '3',
                tag2: '4',
                title: 'Weight',
                middleTitle: weight.toString(),
                remove: () {
                  weight = weight - 1;
                  setState(() {});
                },
                add: () {
                  weight++;
                  setState(() {});
                },
              ),
              SizedBox(
                width: 20,
              ),
              WeightAgeWidget(
                tag1: '1',
                tag2: '2',
                title: 'age',
                middleTitle: age.toString(),
                remove: () {
                  age--;
                  setState(() {});
                },
                add: () {
                  age++;
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CalculateWidget(
        text: 'Calculate',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                height: heightValue,
                weight: weight,
              ),
            ),
          );
        },
      ),
    );
  }
}
