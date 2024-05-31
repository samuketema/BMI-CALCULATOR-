import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/iconContent.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xff1d1e33);
const Color inactiveCardColor = Color(0xff111328);
const Color bottomContainerColor = Color(0xffeb1555);

class ImputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<ImputPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars,
                      label: 'Male',),
                    ),
                  ),
                  Expanded(child: ReusableCard(colour: activeCardColor,
                  cardChild: IconContent(
                    icon:FontAwesomeIcons.venus,
                    label:'Female'
                  ),))
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: activeCardColor)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                  Expanded(child: ReusableCard(colour: activeCardColor))
                ],
              ),
            ),
            Container(
                color: bottomContainerColor,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                height: bottomContainerHeight)
          ],
        ));
  }
}

