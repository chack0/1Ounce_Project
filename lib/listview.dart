import 'package:flutter/material.dart';
import './fonts.dart';

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // scrollDirection: Axis.vertical,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 17,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 5, left: 14, right: 14),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            elevation: 2,
            child: Container(
              width: 380,
              height: 105,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 9),
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.green,
                                size: 20,
                              ),
                            ),
                            Text(
                              "Sold for Rs.7119.62",
                              style: TextStyle(
                                  fontFamily: Fonts().regular,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade700),
                            ),
                          ],
                        ),
                        Text(
                          "Gold 24k",
                          style: TextStyle(
                              fontFamily: Fonts().regular,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue.shade700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 9),
                              child: Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 20,
                              ),
                            ),
                            Text(
                              "11th JUL 2019",
                              style: TextStyle(
                                  fontFamily: Fonts().regular,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue.shade700),
                            ),
                          ],
                        ),
                        Text(
                          "2.0gms",
                          style: TextStyle(
                            fontFamily: Fonts().regular,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
