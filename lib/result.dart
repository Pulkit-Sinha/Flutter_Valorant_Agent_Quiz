import 'package:flutter/material.dart';

class Result extends StatelessWidget {
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

  Result(this.Brim, this.Reyna, this.Viper,  this.Kj, this.Omen, this.Cypher, this.Sova, this.Sage, this.Phoenix, this.Jett, this.Raze, this.Astra, this.Breach, this.Skye, this.Yoru, this.Kayo, this.resetHandler);

  String get resultPhrase {
    String resultText;
    var a = List.generate(2, (index) => List(16), growable: false);
    a[0]=[ 'Brimstone', 'Reyna', 'Viper', 'Killjoy', 'Omen', 'Cypher', 'Sova', 'Sage', 'Phoenix', 'Jett', 'Raze', 'Astra', 'Breach', 'Skye', 'Yoru', 'KAY/O'];
    a[1]=[ Brim, Reyna, Viper, Kj, Omen, Cypher, Sova, Sage, Phoenix, Jett, Raze, Astra, Breach, Skye, Yoru, Kayo];
    var tempi;
    var temps;
    for(int i=0; i<16 ; i++){
      for(int j=i+1 ; j<16 ; j++){
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

    resultText = 'The 3 best agents for you are:\n\n 1.' + a[0][15] +'\n2. ' + a[0][14] +'\n3. ' + a[0][13] +'\n\nand the 3 worst agents for you are:\n\n1. ' + a[0][0] +'\n2. ' +a[0][1] + '\n3. ' + a[0][2];
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
