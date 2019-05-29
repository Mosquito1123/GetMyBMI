import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const greyColour = Color(0xFF1D1E33);
const pinkColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColour: greyColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColour: greyColour,
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                cardColour: greyColour,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColour: greyColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColour: greyColour,
                  ),
                ),
              ],
            )),
            Container(
              color: pinkColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

// Reusable Widget for Layout
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColour});
  final Color cardColour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
