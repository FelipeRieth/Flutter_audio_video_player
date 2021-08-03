import 'package:flutter/material.dart';
import 'AudioPlayerUrl.dart';
import 'VideoPlayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    // Load ads.
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Audio and video player Flutter",textAlign: TextAlign.center,),   backgroundColor: Colors.pinkAccent,),
      body: Center(
        child:   ListView(
          children: [

           AudioPlayerUrl(title: "Cool Piano",
             description: "Tap to open github or click on grey button to listen.",
             thumbnailUrl: 'https://s2.glbimg.com/pp-TWmlpNgQgv_V9pCimaX1EdmA=/smart/e.glbimg.com/og/ed/f/original/2017/12/09/screen_shot_2017-12-09_at_07.52.09.png',
             linkHook: 'https://github.com/FelipeRieth',
             musicUrl: 'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4',
           ),

            VideoPlayer(title: 'Beautiful Flowing Water Stream View In Iceland',
              description: 'https://www.videezy.com/nature/4998-beautiful-flowing-water-stream-view-in-iceland',
              thumbnailUrl: 'https://static.videezy.com/system/resources/thumbnails/000/004/998/small/beautiful-flowing-water-stream-view-in-iceland.jpg',
              linkHook: 'https://github.com/FelipeRieth',
              videoUrl: 'https://static.videezy.com/system/resources/previews/000/004/998/original/iceland_water_stream.mp4',),



          ],
        ),
      ),




    );
  }
}
