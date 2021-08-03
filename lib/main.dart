import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audio_video_player_application/HomePage.dart';

void main() {



  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio and video player Flutter',
      theme: ThemeData(


      ),
      home:HomePage()
    );
  }
}

Future<void> openUrl(String x) async =>{
if(await canLaunch(x)){
await launch(x)
}else{
throw("fucl")
}

};