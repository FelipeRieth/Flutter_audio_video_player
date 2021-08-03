import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class AudioPlayerUrl extends StatefulWidget {
  const AudioPlayerUrl({Key? key, required this.title,required this.description,required this.thumbnailUrl,required this.linkHook,required this.musicUrl}) : super(key: key);

  final String title;
  final String description;
  final String thumbnailUrl;
  final String linkHook;
  final String musicUrl;

  @override
  _AudioPlayerUrlState createState() => _AudioPlayerUrlState();
}

class _AudioPlayerUrlState extends State<AudioPlayerUrl> {
  AudioPlayer audioPlayer =  AudioPlayer();
  PlayerState audioState = PlayerState.PAUSED;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
      setState(() {
        audioState = s;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
  }
  playMusic() async{
    await audioPlayer.play(widget.musicUrl);

  }
  pauseMusic() async{
    await audioPlayer.pause();

  }
  
  @override
  Widget build(BuildContext context) {
    return



    ListTile(
    title: Text(widget.title,textAlign: TextAlign.center),
    subtitle: Text(
    widget.description
    ,textAlign: TextAlign.center,),
    leading: CircleAvatar(backgroundImage: NetworkImage(widget.thumbnailUrl)),
    trailing:  FloatingActionButton(backgroundColor: Colors.grey,child: Icon(audioPlayer.state == PlayerState.PLAYING ? Icons.pause_circle : Icons.music_note_rounded),onPressed: (){
      final myFuture = audioPlayer.state == PlayerState.PLAYING ? pauseMusic() : playMusic();
    }),

    onTap: () async {
      openUrl(widget.linkHook);
    },
      
      
      
    );



  }
}
