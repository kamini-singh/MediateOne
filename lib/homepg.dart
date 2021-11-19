import 'package:flutter/material.dart';
import 'songpg.dart';

List<SongInfo> songs = [
  SongInfo('Acoustic Guitars', 'acousticguitars.mp3', 'guitar1.jpg'),
  SongInfo('Ambient Piano', 'ambientpiano.mp3', 'piano1.jpg'),
  SongInfo('Chilled Acoustic', 'chilledacoustic.mp3', 'guitar 2.jpg'),
  SongInfo('Cinematic Fairy tale', 'cinematicfairytale.mp3', 'fairy.jpg'),
  SongInfo('In the Forest', 'intheforest.mp3', 'forest.jpg'),
  SongInfo('Melody of Nature', 'melodyofnature.mp3', 'nature.jpg'),
  SongInfo('Piano Moment', 'pianomoment.mp3', 'piano2.png'),
  SongInfo('Christmas Dream Piano', 'christmaspiano.mp3', 'christmas.jpg'),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static String id = 'home';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
            const Color(0xff5ce1e6),
            Colors.white,
            ],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child: Text('Relaxing Songs',
            style: TextStyle
              (
              color: Colors.white70,
            ),
          ),
          ),
          backgroundColor: Color(0x572789B0),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index){
              return Card(
                color: Color(0xCABFEC),
                child: GestureDetector(
                  onTap :() {

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Songpage(
                          song:songs[index],
                        )));
                  },
                  child: ListTile(

                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${songs[index].imagePath}'),
                    ),
                    title: Text(songs[index].songName,
                      style: TextStyle
                        (
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Meditate',
                      style: TextStyle
                        (
                        color: Colors.black54,
                      ),
                    ),
                    trailing: Icon(
                      Icons.play_arrow,
                      color: Colors.white54,
                    ),
                  ),
                ),

              );
            }
        ),
      ),
    );
  }
}



