import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TecladoEfectos(),
    );
  }
}

class TecladoEfectos extends StatelessWidget{

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SW Sounds"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.music_note),
                onPressed: (){
                  //Navegar a pantalla de Música
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TecladoMusica()),
                  );
                }
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                creaTecla(color: Colors.deepPurple, nota: 1),
                creaTecla(color: Colors.red, nota: 2),
                creaTecla(color: Colors.orange, nota: 3),
                creaTecla(color: Colors.yellow, nota: 4),
                creaTecla(color: Colors.lightGreenAccent, nota: 5),
                creaTecla(color: Colors.green, nota: 6),
                creaTecla(color: Colors.lightBlueAccent, nota: 7),
                creaTecla(color: Colors.blue, nota: 8),
                creaTecla(color: Colors.blueAccent, nota: 9),
                creaTecla(color: Colors.purpleAccent, nota: 10),

              ],
            )

        )
    );
  }
}


class TecladoMusica extends StatelessWidget{

  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SW Music"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.surround_sound),
                onPressed: (){
                  //Navegar a pantalla de Efectos
                  Navigator.pop(context);
                }
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                creaTecla(color: Colors.deepPurple, nota: 11),
                creaTecla(color: Colors.red, nota: 12),
                creaTecla(color: Colors.orange, nota: 13),
                creaTecla(color: Colors.yellow, nota: 14),
                creaTecla(color: Colors.lightGreenAccent, nota: 15),
              ],
            )
        )
    );
  }
}
