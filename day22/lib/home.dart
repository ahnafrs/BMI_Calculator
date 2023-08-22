import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color cardClr = Color(0xff1D1F33);
  bool isMale = true;
  int weight = 60;
  int age = 20;
  int height = 80;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff090D1E),
        body: Container(
          child: Column(children: [
            Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Card(
                              color: isMale == true ? Colors.teal : cardClr,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 80,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              color: isMale == false ? Colors.teal : cardClr,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 80,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Card(
                    color: cardClr,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "$height",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15,
                                ),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 30),
                                thumbColor: Colors.pink,
                                overlayColor: Colors.pink[100],
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                              ),
                              child: Slider(
                                  min: 20,
                                  max: 200,
                                  value: height.toDouble(),
                                  onChanged: (double value) {
                                    setState(() {
                                      height = value.toInt();
                                    });
                                  }))
                        ]),
                  ),
                )),
            Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Card(
                              color: cardClr,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "WEIGHT",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "$weight",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              if (weight > 0) {
                                                weight--;
                                              }
                                            });
                                          },
                                          isExtended: true,
                                          child: Icon(Icons.remove),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          isExtended: true,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Card(
                              color: cardClr,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "AGE",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "$age",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              if (age > 0) {
                                                age--;
                                              }
                                            });
                                          },
                                          isExtended: true,
                                          child: Icon(Icons.remove),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          isExtended: true,
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    var heightSquare = height * height / 10000;
                    var result = weight / heightSquare;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              children: [
                                Text(
                                  "Your Weight is ${weight}\n Your Height is ${height}",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                    "Yout BMI Report Is ${result.toStringAsFixed(1)} "),
                                Text(result <= 18.4
                                    ? "You are Underweight"
                                    : result < 25
                                        ? "You are perfect"
                                        : "Your are Overweight"),
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    color: Colors.pink,
                    alignment: Alignment.center,
                    child: Text(
                      "Calculate BMI",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
