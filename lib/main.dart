//quote
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  int _counter = 0;

  List quotes = [
    "Life isn’t about getting and having, it’s about giving and being.",
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Strive not to be a success, but rather to be of value.",
    "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.",
    "I attribute my success to this: I never gave or took any excuse.",
    "You miss 100% of the shots you don’t take.",
    "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.",
    "The most difficult thing is the decision to act, the rest is merely tenacity.",
    "Every strike brings me closer to the next home run.",
    "Definiteness of purpose is the starting point of all achievement.",
    "We must balance conspicuous consumption with conscious capitalism.",
    "Life is what happens to you while you’re busy making other plans.",
    "We become what we think about.",
    "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do, so throw off the bowlines, sail away from safe harbor, catch the trade winds in your sails.  Explore, Dream, Discover.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "The most common way people give up their power is by thinking they don’t have any.",
    "The mind is everything. What you think you become.",
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              color: Colors.blueAccent,
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Text(
                quotes[_counter % quotes.length],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {
                      _decrementCounter();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Color(0xffeaeff2)),
                    label: Text(
                      'Previous',
                      style: TextStyle(
                        color: Color(0xffeaeff2),
                      ),
                    ),
                    color: Color(0xff30425f),
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      _incrementCounter();
                    },
                    icon: Text(
                      'Next',
                      style: TextStyle(
                        color: Color(0xffeaeff2),
                      ),
                    ),
                    color: Color(0xff30425f),
                    label:
                        Icon(Icons.arrow_forward_ios, color: Color(0xffeaeff2)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
