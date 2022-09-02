import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Ready to start the quiz?',
      'answers': [
        {'text': 'Yes', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },
    {
      //, 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0

      'questionText': 'What is your favorite agent class?',
      'answers': [
        {'text': 'Controllers', 'bri': 6,'rey': 0,'vip': 6,'kill': 0,'om': 6,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 6,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Dualists', 'bri': 0,'rey': 6,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 6,'je': 6,'ra': 6,'as': 0,'bre': 0,'sk': 0,'yo': 6,'ka': 0, 'fa': 0, 'ne': 6, 'cha': 0},
        {'text': 'Sentinels', 'bri': 0,'rey': 0,'vip': 0,'kill': 6,'om': 0,'cy': 6,'so': 0,'sa': 6,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 6},
        {'text': 'Initiators', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 6,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 6,'sk': 6,'yo': 0,'ka': 6, 'fa': 6, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'How important is it for you to have flashes?',
      'answers': [
        {'text': 'Need flashes', 'bri': 0,'rey': 4,'vip': 0,'kill': 0,'om': 2,'cy': 0,'so': 0,'sa': 0,'ph': 4,'je': 0,'ra': 0,'as': 0,'bre': 4,'sk': 4,'yo': 4,'ka': 4, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Could come in handy', 'bri': 0,'rey': 2,'vip': 0,'kill': 0,'om': 1,'cy': 0,'so': 0,'sa': 0,'ph': 2,'je': 0,'ra': 0,'as': 0,'bre': 2,'sk': 2,'yo': 2,'ka': 2, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Not Important', 'bri': 0,'rey': -2,'vip': 0,'kill': 0,'om': -1,'cy': 0,'so': 0,'sa': 0,'ph': -2,'je': 0,'ra': 0,'as': 0,'bre': -2,'sk': -2,'yo': -2,'ka': -2, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Hate flashing', 'bri': 0,'rey': -4,'vip': 0,'kill': 0,'om': -2,'cy': 0,'so': 0,'sa': 0,'ph': -4,'je': 0,'ra': 0,'as': 0,'bre': -4,'sk': -4,'yo': -4,'ka': -4, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'How important is it for you to have smokes?',
      'answers': [
        {'text': 'Love smoking', 'bri': 6,'rey': 0,'vip': 4,'kill': 0,'om': 4,'cy': 2,'so': 0,'sa': 4,'ph': 2,'je': 2,'ra': 0,'as': 4,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 2, 'cha': 0},
        {'text': 'Can\'t hurt', 'bri': 3,'rey': 0,'vip': 2,'kill': 0,'om': 2,'cy': 1,'so': 0,'sa': 2,'ph': 1,'je': 1,'ra': 0,'as': 2,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 1, 'cha': 0},
        {'text': 'I\'d rather not', 'bri': -3,'rey': 0,'vip': -2,'kill': 0,'om': -2,'cy': -1,'so': 0,'sa': -2,'ph': -1,'je': -1,'ra': 0,'as': -2,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': -1, 'cha': 0 },
        {'text': 'Hate playing smokes', 'bri': -6,'rey': 0,'vip': -4,'kill': 0,'om': -4,'cy': -2,'so': 0,'sa': -4,'ph': -2,'je': -2,'ra': 0,'as': -4,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': -2, 'cha': 0},
      ],
    },
    {
      'questionText': 'How important is it for you to have a molly?',
      'answers': [
        {'text': 'Very Important', 'bri': 2,'rey': 0,'vip': 4,'kill': 4,'om': 0,'cy': 0,'so': 4,'sa': 0,'ph': 2,'je': 0,'ra': 2,'as': 0,'bre': 2,'sk': 0,'yo': 0,'ka': 2, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'I\'ll take it', 'bri': 1,'rey': 0,'vip': 2,'kill': 2,'om': 0,'cy': 0,'so': 2,'sa': 0,'ph': 1,'je': 0,'ra': 1,'as': 0,'bre': 1,'sk': 0,'yo': 0,'ka': 1, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Not Important', 'bri': -1,'rey': 0,'vip': -2,'kill': -2,'om': 0,'cy': 0,'so': -2,'sa': 0,'ph': -1,'je': 0,'ra': -1,'as': 0,'bre': -1,'sk': 0,'yo': 0,'ka': -1, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Molly sucks', 'bri': -2,'rey': 0,'vip': -4,'kill': -4,'om': 0,'cy': 0,'so': -4,'sa': 0,'ph': -2,'je': 0,'ra': -2,'as': 0,'bre': -2,'sk': 0,'yo': 0,'ka': -2, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'How do you feel about buffing teammates/debuffing opponents?',
      'answers': [
        {'text': 'It\'s the subtle things that matter', 'bri': 2,'rey': 0,'vip': 4,'kill': 2,'om': 0,'cy': 0,'so': 0,'sa': 4,'ph': 0,'je': 0,'ra': 0,'as': 4,'bre': 2,'sk': 0,'yo': 0,'ka': 2, 'fa': 2, 'ne': 2, 'cha': 2},
        {'text': 'Sure why not', 'bri': 1,'rey': 0,'vip': 2,'kill': 1,'om': 0,'cy': 0,'so': 0,'sa': 2,'ph': 0,'je': 0,'ra': 0,'as': 2,'bre': 1,'sk': 0,'yo': 0,'ka': 1, 'fa': 1, 'ne': 1, 'cha': 1 },
        {'text': 'I\'d rather not', 'bri': -1,'rey': 0,'vip': -2,'kill': -1,'om': 0,'cy': 0,'so': 0,'sa': -2,'ph': 0,'je': 0,'ra': 0,'as': -2,'bre': -1,'sk': 0,'yo': 0,'ka': -1, 'fa': -1, 'ne': -1, 'cha': -1},
        {'text': 'No', 'bri': -2,'rey': 0,'vip': -4,'kill': -2,'om': 0,'cy': 0,'so': 0,'sa': -4,'ph': 0,'je': 0,'ra': 0,'as': -4,'bre': -2,'sk': 0,'yo': 0,'ka': -2, 'fa': -2, 'ne': -2, 'cha': -2},
      ],
    },
    {
      'questionText': 'How important are recon abilities for you?',
      'answers': [
        {'text': 'Love gathering info', 'bri': 0,'rey': 0,'vip': 0,'kill': 2,'om': 0,'cy': 2,'so': 4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 4,'yo': 0,'ka': 2, 'fa': 4, 'ne': 0, 'cha': 0},
        {'text': 'It is pretty useful', 'bri': 0,'rey': 0,'vip': 0,'kill': 1,'om': 0,'cy': 1,'so': 2,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 2,'yo': 0,'ka': 1, 'fa': 2, 'ne': 0, 'cha': 0},
        {'text': 'Seems boring', 'bri': 0,'rey': 0,'vip': 0,'kill': -1,'om': 0,'cy': -1,'so': -2,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -2,'yo': 0,'ka': -1, 'fa': -2, 'ne': 0, 'cha': 0},
        {'text': 'Who needs info?', 'bri': 0,'rey': 0,'vip': 0,'kill': -2,'om': 0,'cy': -2,'so': -4,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -4,'yo': 0,'ka': -2, 'fa': -4, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'How important are healing abilities (that help your teammates) for you?',
      'answers': [
        {'text': 'Can\'t win without a good healer', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 4,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 4,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Could always come in handy', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 2,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 2,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'I\'d rather someone else be the healer', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -2,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -2,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Noob team, let them die', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -4,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': -4,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'How important are self-healing abilities for you?',
      'answers': [
        {'text': 'Getting aces has never been easier', 'bri': 0,'rey': 4,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 2,'ph': 2,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Could use a pick-me-up sometimes', 'bri': 0,'rey': 2,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 1,'ph': 1,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Don\'t find the time to heal', 'bri': 0,'rey': -2,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -1,'ph': -1,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Headshot or nothing', 'bri': 0,'rey': -4,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': -2,'ph': -2,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },

    {
      'questionText': 'Do you enjoy abilities that rely strongly on outsmarting your opponents?',
      'answers': [
        {'text': 'Love putting people in their place', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 2,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 4,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'I am something of a scientist myself', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 1,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 2,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'Would rather play off my aim', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': -1,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': -2,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
        {'text': 'No', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': -2,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': -4,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
      ],
    },
    {
      'questionText': 'Do you want abilities that help you quickly get out of sticky situations?',
      'answers': [
        {'text': 'Good luck trading that', 'bri': 0,'rey': 2,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 2,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 2,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 4},
        {'text': 'Can\'t hurt', 'bri': 0,'rey': 1,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 1,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 1,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 2},
        {'text': 'Nah', 'bri': 0,'rey': -1,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': -1,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': -1,'ka': 0, 'fa': 0, 'ne': 0, 'cha': -2},
        {'text': 'Never back down', 'bri': 0,'rey': -2,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': -2,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': -2,'ka': 0, 'fa': 0, 'ne': 0, 'cha': -4},
      ],
    },
    {
      'questionText': 'Would you like some ability that helps you detect flanks?',
      'answers': [
        {'text': 'Sick of dying from behind', 'bri': 0,'rey': 0,'vip': 0,'kill': 2,'om': 0,'cy': 4,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 2},
        {'text': 'Always good to be aware', 'bri': 0,'rey': 0,'vip': 0,'kill': 1,'om': 0,'cy': 2,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 1},
        {'text': 'Someone else do it please', 'bri': 0,'rey': 0,'vip': 0,'kill': -1,'om': 0,'cy': -2,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': -1},
        {'text': 'Can\'t be bothered', 'bri': 0,'rey': 0,'vip': 0,'kill': -2,'om': 0,'cy': -4,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 0, 'fa': 0, 'ne': 0, 'cha': -2},
      ],
    },
    {
      'questionText': 'What type of an ultimate do you prefer?',
      'answers': [
        {'text': 'Damage', 'bri': 4,'rey': 4,'vip': 0,'kill': 0,'om': 0,'cy': 0,'so': 4,'sa': 4,'ph': 4,'je': 4,'ra': 4,'as': 0,'bre': 0,'sk': 0,'yo': 0,'ka': 4, 'fa': 0, 'ne': 4, 'cha': 4},
        {'text': 'Map Control', 'bri': 0,'rey': 0,'vip': 4,'kill': 4,'om': 0,'cy': 0,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 4,'bre': 4,'sk': 0,'yo': 0,'ka': 0, 'fa': 4, 'ne': 0, 'cha': 0},
        {'text': 'Recon', 'bri': 0,'rey': 0,'vip': 0,'kill': 0,'om': 4,'cy': 4,'so': 0,'sa': 0,'ph': 0,'je': 0,'ra': 0,'as': 0,'bre': 0,'sk': 4,'yo': 4,'ka': 0, 'fa': 0, 'ne': 0, 'cha': 0},
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
  var Chamber = 0;
  var Fade = 0;
  var Neon = 0;

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
      var Chamber = 0;
      var Fade = 0;
      var Neon = 0;
    });
  }

  AudioPlayer advancedPlayer;

  Future loadMusic() async {
    advancedPlayer = await AudioCache().play("sounds/reaverkill.mp3");
  }

  Future specialloadMusic() async {
    advancedPlayer = await AudioCache().play("sounds/reaverace.mp3");
  }

  void _answerQuestion(int bri, int rey, int vip, int kill, int om, int cy, int so, int sa, int ph, int je, int ra, int as, int bre, int sk, int yo, int ka, int fa, int ne, int cha) {

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
    Fade += fa;
    Neon += ne;
    Chamber += cha;

    //PLAYING SOUNDS ON SELECTING OPTION
    if(_questionIndex!=12)
      loadMusic();
    else
      specialloadMusic();

    setState(() {
      _questionIndex = _questionIndex + 1;

    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    // print("Brim" + Brim + );
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
          backgroundColor: Colors.yellow,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(Brim, Reyna, Viper, Kj, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Astra, Breach, Skye, Yoru, Kayo, Fade, Neon, Chamber, _resetQuiz),
      ),
    );
  }
}
