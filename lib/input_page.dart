import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColour = Color(0xFF1D1E33);
const bottomCardColour = Color(0xFFEB1555);

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
                    cardColour: cardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      iconText: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColour: cardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.female,
                      iconText: 'Female',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                cardColour: cardColour,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColour: cardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColour: cardColour,
                  ),
                ),
              ],
            )),
            Container(
              color: bottomCardColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
