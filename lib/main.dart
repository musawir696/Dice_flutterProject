import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  return runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body:DicePage(),
      ),
    ),
  );

}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context)
  {
    int leftDiceNumber=1;
    int rightDiceNumber=1;
    void changeDiceface()
    {
      setState(() {
        leftDiceNumber=Random().nextInt(6)+1;
        rightDiceNumber= Random().nextInt(6)+1;
        print('left Dice number=$leftDiceNumber');
      });

    }

    return Center(
      child: Row(
        children:  <Widget>[
          Expanded(
            child:FloatingActionButton(

                onPressed: ()
                {
                  changeDiceface();


                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),


          Expanded(
            child:FloatingActionButton
              (onPressed: () {

              changeDiceface();

            },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),



        ],

      ),
    );
  }
}




