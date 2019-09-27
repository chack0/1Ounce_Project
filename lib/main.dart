import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'fonts.dart';
import 'listview.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'All';

  var deviceHeight;
  var deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        centerTitle: true,
        title: Text(
          "Wallet",
          style: TextStyle(fontFamily: Fonts().regular, color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.1, 0.6, 0.8, 0.99],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.blue[400],
                        Colors.cyan[400],
                        Colors.cyan[300],
                        Colors.cyan[200],
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        // width: deviceWidth,
                        // color: Colors.yellow,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                            ),
                            child: Text(
                              "Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: Fonts().regular),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 0, left: 19, right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: new CircularPercentIndicator(
                                radius: 100.0,
                                lineWidth: 5.0,
                                animation: true,
                                animationDuration: 1300,
                                percent: 0.7,
                                center: new Text(
                                  "5.8\ngms",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                footer: new Text(
                                  "916 Gold",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: const Color(0XffFFDF00),
                                backgroundColor: Colors.black.withAlpha(12),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: new CircularPercentIndicator(
                                radius: 100.0,
                                lineWidth: 5.0,
                                animation: true,
                                animationDuration: 1800,
                                percent: 0.7,
                                center: new Text(
                                  "10.5\ngms",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                footer: new Text(
                                  "999 Gold",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: const Color(0XffD4AF37),
                                backgroundColor: Colors.black.withAlpha(12),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: new CircularPercentIndicator(
                                radius: 100.0,
                                lineWidth: 5.0,
                                animation: true,
                                animationDuration: 2000,
                                percent: 0.7,
                                center: new Text(
                                  "22.1\ngms",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                footer: new Text(
                                  "Silver",
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontFamily: Fonts().regular,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13.0),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundColor: Colors.black.withAlpha(12),
                                progressColor: const Color(0XffC0C0C0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      print("Pickup button tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            "Pickup",
                            style: TextStyle(
                                fontFamily: Fonts().regular,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    height: 70,
                    width: 0.9,
                    color: Colors.black12,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            "Sell",
                            style: TextStyle(
                                fontFamily: Fonts().regular,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 10),
              child: Container(
                // color: Colors.yellow,
                width: deviceWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Orders",
                        style: TextStyle(
                            fontFamily: Fonts().regular,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0, top: 0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            underline: Container(
                              height: 2.5,
                              color: Colors.transparent,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'All',
                              'Items have been Bought',
                              'Items have been Sold',
                              'Others',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // height: 710,
              height: deviceHeight * 0.80,
              child: Container(
                  color: Colors.grey.shade100.withOpacity(0.6),
                  child: Listview()),
            ),
          ],
        ),
      ),
    );
  }
}