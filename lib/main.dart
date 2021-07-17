import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      //, 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0

      'questionText': 'What is your favorite agent class?',
      'answers': [
        {'text': 'Controllers', 'bri': 5,'rey': 0,'vip': 5,'kill': 0,'om': 5,'cy': 0,'so':0 ,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 5,'bre': 0,'sk':0 ,'yo': 0,'ka': 0},
        {'text': 'Dualists', 'bri': 0,'rey': 5,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 5,'je': 5,'ra': 5,'as': 0,'bre': 0,'sk': 0,'yo': 5,'ka': 0},
        {'text': 'Sentinels', 'bri': 0,'rey': 0,'vip': 0,'kill': 5,'om': 0,'cy': 5,'so': 0,'sa': 5,'ph': 0,'je':0 ,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0},
        {'text': 'Initiators', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 5,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 5,'sk': 5,'yo': 0,'ka': 5},
      ],
    },
    {
      'questionText': 'How important is it for you to have flashes?',
      'answers': [
        {'text': 'Need flashes', 'bri': 0,'rey': 4,'vip': 0,'kill': 0,'om': 2,'cy': 0,'so': 0,'sa': 0,'ph': 4,'je': 0,'ra': 0,'as': 0,'bre': 4,'sk': 4,'yo': 4,'ka': 4},
        {'text': 'Could come in handy', 'bri': 0,'rey': 2,'vip': 0,'kill': 0,'om': 1,'cy': 0,'so': 0,'sa': 0,'ph': 2,'je': 0,'ra': 0,'as': 0,'bre': 2,'sk': 2,'yo': 2,'ka': 2},
        {'text': 'Not Important', 'bri': 0,'rey': -2,'vip': 0,'kill': 0,'om': -1,'cy': 0,'so': 0,'sa': 0,'ph': -2,'je': 0,'ra': 0,'as': 0,'bre': -2,'sk': -2,'yo': -2,'ka': -2},
        {'text': 'Hate flashing', 'bri': 0,'rey': -4,'vip': 0,'kill': 0,'om': -2,'cy': 0,'so': 0,'sa': 0,'ph': -4,'je': 0,'ra': 0,'as': 0,'bre': -4,'sk': -4,'yo': -4,'ka': -4},
      ],
    },
    {
      'questionText': 'How important is it for you to have smokes?',
      'answers': [
        {'text': 'Love smoking', 'bri': 6,'rey': 0,'vip': 4,'kill': 0,'om': 4,'cy': 4,'so': 0,'sa': 0,'ph': 2,'je': 4,'ra': 0,'as': 6,'bre': 0,'sk': 0,'yo': 0,'ka': 0},
        {'text': 'Can\'t hurt', 'bri': 3,'rey': 0,'vip': 2,'kill': 0,'om': 2,'cy': 2,'so': 0,'sa': 0,'ph': 1,'je':2 ,'ra': 0,'as': 3,'bre': 0,'sk': 0,'yo': 0,'ka': 0},
        {'text': 'I\'d rather not', 'bri': -3,'rey': 0,'vip': -2,'kill': 0,'om': -2,'cy': -2,'so': 0,'sa': 0,'ph':-1 ,'je': -2,'ra': 0,'as': -3,'bre': 0,'sk': 0,'yo': 0,'ka':0 },
        {'text': 'Smokes are useless', 'bri': -6,'rey': 0,'vip': -4,'kill': 0,'om': -4,'cy': -4,'so':0 ,'sa': 0,'ph': -2,'je': -4,'ra': 0,'as':-6 ,'bre': 0,'sk': 0,'yo': 0,'ka':0},
      ],
    },
    {
      'questionText': 'How important is it for you to have a molly?',
      'answers': [
        {'text': 'Very Important', 'bri': 2,'rey': 0,'vip': 4,'kill': 4,'om': 0,'cy': 0,'so': 4,'sa': 0,'ph': 2,'je': 0,'ra': 2,'as': 0,'bre': 2,'sk': 0,'yo': 0,'ka': 2},
        {'text': 'I\'ll take it', 'bri': 1,'rey': 0,'vip': 2,'kill': 2,'om': 0,'cy': 0,'so': 2,'sa':0 ,'ph': 1,'je': 0,'ra':1 ,'as': 0,'bre': 1,'sk': 0,'yo': 0,'ka': 1},
        {'text': 'Not Important', 'bri': -1,'rey': 0,'vip': -2,'kill': -2,'om': 0,'cy': 0,'so': -2,'sa': 0,'ph': -1,'je': 0,'ra': -1,'as': 0,'bre': -1,'sk': 0,'yo': 0,'ka': -1},
        {'text': 'Mollies suck', 'bri': -2,'rey': 0,'vip': -4,'kill': -4,'om': 0,'cy': 0,'so': -4,'sa': 0,'ph': -2,'je': 0,'ra': -2,'as': 0,'bre': -2,'sk': 0,'yo': 0,'ka': -2},
      ],
    },
    {
      'questionText': 'How do you feel about learning lineups?',
      'answers': [
        {'text': 'Love doing lineups', 'bri': 4,'rey': 0,'vip': 4,'kill': 4,'om': 0,'cy': 0,'so': 4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 4},
        {'text': 'Could learn a few', 'bri': 2,'rey': 0,'vip': 2,'kill': 2,'om': 0,'cy': 0,'so': 2,'sa': 0,'ph': 0,'je':0 ,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka':2 },
        {'text': 'I\'d rather not', 'bri': -2,'rey': 0,'vip': -2,'kill': -2,'om': 0,'cy': 0,'so': -2,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': -2},
        {'text': 'Hate lineups', 'bri': -4,'rey': 0,'vip': -4,'kill': -4,'om': 0,'cy': 0,'so': -4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': -4},
      ],
    },
    {
      'questionText': 'How important are recon abilities for you?',
      'answers': [
        {'text': 'Love gathering info', 'bri': 0,'rey': 0,'vip': 0,'kill': 4,'om': 0,'cy': 6,'so': 4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 4,'yo': 0,'ka': 0},
        {'text': 'It is pretty useful', 'bri': 0,'rey': 0,'vip': 0,'kill': 2,'om': 0,'cy': 3,'so': 2,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 2,'yo': 0,'ka': 0},
        {'text': 'Seems boring', 'bri': 0,'rey': 0,'vip': 0,'kill': -2,'om': 0,'cy': -3,'so': -2,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -2,'yo': 0,'ka': 0},
        {'text': 'Who needs info?', 'bri': 0,'rey': 0,'vip': 0,'kill': -4,'om': 0,'cy': -6,'so': -4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -4,'yo': 0,'ka': 0},
      ],
    },
    {
      'questionText': 'How important are healing abilities (that help your teammates) for you?',
      'answers': [
        {'text': 'Can\'t win without a good healer', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 6,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 6,'yo': 0,'ka': 0},
        {'text': 'Could always come in handy', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 3,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 3,'yo': 0,'ka': 0},
        {'text': 'I\'d rather someone else be the healer', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so':0 ,'sa':-3 ,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -3,'yo': 0,'ka': 0},
        {'text': 'Noob team anyway, let them die', 'bri': 0,'rey': 0,'vip':0 ,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -6,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -6,'yo': 0,'ka': 0},
      ],
    },
    {
      'questionText': 'How important are self-healing abilities for you?',
      'answers': [
        {'text': 'Getting aces has never been easier', 'bri': 0,'rey': 6,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 4,'ph':4,'je': 0,'ra': 0,'as':0 ,'bre': 0,'sk':0 ,'yo':0 ,'ka':0 },
        {'text': 'Could use a pick-me-up sometimes', 'bri': 0,'rey': 3,'vip': 0,'kill':0,'om': 0,'cy': 0,'so':0 ,'sa': 2,'ph': 2,'je': 0,'ra': 0,'as':0 ,'bre': 0,'sk': 0,'yo':0 ,'ka': 0},
        {'text': 'Don\'t find the time to heal', 'bri': 0,'rey': -3,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -2,'ph': -2,'je':0 ,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0},
        {'text': 'Headshot or nothing', 'bri': 0,'rey': -6,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -4,'ph': -4,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo':0 ,'ka':0 },
      ],
    },
    {
      'questionText': 'How important is a game-changing ultimate for you?',
      'answers': [
        {'text': 'Need a good ult', 'bri': 3,'rey': 0,'vip': 3,'kill': 3,'om': 0,'cy': 0,'so': 0,'sa': 3,'ph': 3,'je': 0,'ra': 3,'as': 0,'bre': 3,'sk': 0,'yo': 0,'ka': 0},
        {'text': 'Not that big a priority', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0},
    ],
    },
  ];
  var _questionIndex = 0;
  var Brim = 0;
  var Reyna = 0;
  var Viper = 0;
  var Kj = 0;
  var Omen = 0;
  var Cypher = 0;
  var Sova = 0;
  var Sage = 0;
  var Phoenix = 0;
  var Jett = 0;
  var Raze = 0;
  var Astra = 0;
  var Breach = 0;
  var Skye = 0;
  var Yoru = 0;
  var Kayo = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      var Brim = 0;
      var Reyna = 0;
      var Viper = 0;
      var Kj = 0;
      var Omen = 0;
      var Cypher = 0;
      var Sova = 0;
      var Sage = 0;
      var Phoenix = 0;
      var Jett = 0;
      var Raze = 0;
      var Astra = 0;
      var Breach = 0;
      var Skye = 0;
      var Yoru = 0;
      var Kayo = 0;
    });
  }

  void _answerQuestion(int bri, int rey, int vip, int kill, int om, int cy, int so, int sa, int ph, int je, int ra, int as, int bre, int sk, int yo, int ka) {;

    Brim += bri;
    Reyna += rey;
    Viper += vip;
    Kj += kill;
    Omen += om;
    Cypher += cy;
    Sova += so;
    Sage += sa;
    Phoenix += ph;
    Jett += je;
    Raze+= ra;
    Astra += ra;
    Breach += bre;
    Skye += sk;
    Yoru += yo;
    Kayo += ka;


    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Valorant',
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Valorant Agent Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(Brim, Reyna, Viper, Kj, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Astra, Breach, Skye, Yoru, Kayo, _resetQuiz),
      ),
    );
  }
}
