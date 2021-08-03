import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'main.dart';

import 'package:video_player/video_player.dart';
import 'package:audio_video_player_application/chewie_list_item.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key, required this.title,required this.description,required this.thumbnailUrl,required this.linkHook,required this.videoUrl}) : super(key: key);

  final String title;
  final String description;
  final String thumbnailUrl;
  final String linkHook;
  final String videoUrl;
  @override
  _VideoPlayer createState() => _VideoPlayer();
}

class _VideoPlayer extends State<VideoPlayer> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
        trailing:  FloatingActionButton(backgroundColor: Colors.grey,child: Icon(Icons.music_video_rounded),onPressed: () async {
          final navigationResult= await Navigator.push(context, new MaterialPageRoute(builder: (context) =>
              ChewieListItem(videoPlayerController: VideoPlayerController.network(widget.videoUrl),looping: true)));

        }),

        onTap: () async {
          openUrl(widget.linkHook);
        },



      );



  }
}
