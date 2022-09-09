import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var flag=0;
  final Function resetHandler;
  final int Brim;
  final int Reyna;
  final int Viper;
  final int Kj;
  final int Omen;
  final int Cypher;
  final int Sova;
  final int Sage;
  final int Phoenix;
  final int Jett;
  final int Raze;
  final int Astra;
  final int Breach;
  final int Skye;
  final int Yoru;
  final int Kayo;
  final int Fade;
  final int Neon;
  final int Chamber;

  Result(this.Brim, this.Reyna, this.Viper,  this.Kj, this.Omen, this.Cypher, this.Sova, this.Sage, this.Phoenix, this.Jett, this.Raze, this.Astra, this.Breach, this.Skye, this.Yoru, this.Kayo, this.Fade, this.Neon, this.Chamber, this.resetHandler);

  String get resultPhrase {
    String resultText;
    var a = List.generate(2, (index) => List(19), growable: false);
    a[0]=[ 'Brimstone', 'Reyna', 'Viper', 'Killjoy', 'Omen', 'Cypher', 'Sova', 'Sage', 'Phoenix', 'Jett', 'Raze', 'Astra', 'Breach', 'Skye', 'Yoru', 'KAY/O', 'Fade', 'Neon', 'Chamber'];
    a[1]=[ Brim, Reyna, Viper, Kj, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Astra, Breach, Skye, Yoru, Kayo, Fade, Neon, Chamber];
    var tempi;
    var temps;
    for(int i=0; i<19 ; i++){
      for(int j=i+1 ; j<19 ; j++){
        if(a[1][j]<a[1][i]){
          tempi=a[1][i];
          temps=a[0][i];
          a[0][i]=a[0][j];
          a[1][i]=a[1][j];
          a[0][j]=temps;
          a[1][j]=tempi;
        }
      }
    }

    resultText = 'The 3 best agents for you are:\n\n 1.' + a[0][18] +'\n2. ' + a[0][17] +'\n3. ' + a[0][16] +'\n\nand the 3 worst agents for you are:\n\n1. ' + a[0][0] +'\n2. ' +a[0][1] + '\n3. ' + a[0][2];
    return resultText;
  }

  String get best{
    var a = List.generate(2, (index) => List(19), growable: false);
    a[0]=[ 'Brimstone', 'Reyna', 'Viper', 'Killjoy', 'Omen', 'Cypher', 'Sova', 'Sage', 'Phoenix', 'Jett', 'Raze', 'Astra', 'Breach', 'Skye', 'Yoru', 'KAY/O', 'Fade', 'Neon', 'Chamber'];
    a[1]=[ Brim, Reyna, Viper, Kj, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Astra, Breach, Skye, Yoru, Kayo, Fade, Neon, Chamber];
    var tempi;
    var temps;
    for(int i=0; i<19 ; i++){
      for(int j=i+1 ; j<19 ; j++){
        if(a[1][j]<a[1][i]){
          tempi=a[1][i];
          temps=a[0][i];
          a[0][i]=a[0][j];
          a[1][i]=a[1][j];
          a[0][j]=temps;
          a[1][j]=tempi;
        }
      }
    }

    return a[0][18];
  }

  @override
  Widget build(BuildContext context) {
    if(best == 'Brimstone'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/brimstone.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Reyna'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/reyna.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Viper'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/viper.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Killjoy'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/killjoy.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Omen'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/omen.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Cypher'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cypher.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Sova'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sova.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Sage'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sage.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Phoenix'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/phoenix.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Jett'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/jett.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Raze'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/raze.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Astra'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/astra.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Breach'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/breach.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Skye'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/skye.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Yoru'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/yoru.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'KAY/O'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/kayo.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Fade'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fade.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Neon'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/neon.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else if(best == 'Chamber'){
      return Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/chamber.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  'Restart Quiz!',
                ),
                // textColor: Colors.blue,
                onPressed: resetHandler,
              ),
            ],
          ),
        ),
      );
    }
    else{
      return Container();
    }
  }
}
