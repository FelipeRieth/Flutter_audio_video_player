import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class ChewieListItem extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem({
    required this.videoPlayerController, required this.looping});
  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(videoPlayerController: widget.videoPlayerController,aspectRatio: 16/9
    ,autoInitialize: true,autoPlay: true,allowMuting: true);
  }

  @override
  Widget build(BuildContext context) {

    return Padding(padding: const EdgeInsets.all(8.0),
    child: Chewie( controller: _chewieController));

  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    VideoPlayerController videoPlayerController;
    widget.videoPlayerController.dispose();
    _chewieController.dispose();

  }



}
