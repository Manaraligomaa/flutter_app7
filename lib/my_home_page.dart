import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter = 0;
  int counterindex = 0;

  void counterselection2() {
    if (counterindex == 5) {
      counterindex = -1;
    }
    setState(() {
      counterindex++;
    });
  }

  void counterselection() {
    if (counter == 5) {
      counter = -1;
    }
    setState(() {
      counter++;
    });
  }

  int lol = 0;
 static int v=0;

   void mysum() {
    for (int i=0;i>6;i++){
    for(int y=0;y>6;y++)
         v =mynums[i]+mynums[y];

    }
    setState(() {
      lol+=v;
    });
  }

  List mynums = [
    [1,
      5,
      2,
      3,
      0,
      4,
    ],
    [
      3,
      1,
      4,
      0,
      5,
      2
    ]
  ];

  List mydice = [
    "assets/dice.png",
    "assets/lol2.png",
    "assets/dice-result-two.png",
    "assets/dice-roll.png",
    "assets/die-face.png",
    "assets/lol.png"
  ];
  List mydice2 = [
    "assets/dice-roll.png",
    "assets/dice.png",
    "assets/lol.png",
    "assets/die-face.png",
    "assets/lol2.png",
    "assets/dice-result-two.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text("The Dice App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Shack to throw", style: TextStyle(color: Colors.teal[700],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),

                SizedBox(height: 200,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(mydice[counter], color: Colors.red,
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,),
                    SizedBox(width: 10,),
                    Image.asset(mydice2[counterindex], color: Colors.red,
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,),

                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                TextButton(onPressed: () {
                  counterselection();
                  counterselection2();
                  mysum();
                },
                  child: Text(
                    "ROLL DICE", style: TextStyle(color: Colors.white),),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
