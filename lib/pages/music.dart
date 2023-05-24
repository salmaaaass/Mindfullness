import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class music extends StatefulWidget{
  const music({Key?key}):super(key: key);

  @override
  State<music> createState()=>_music();
}
class _music extends State<music> {
  // music({super.key});

  final url1="https://www.youtube.com/watch?v=ru4hdcMmlwQ";
  
  late YoutubePlayerController _controller;

  @override
  void initState() {

    final vedioID=YoutubePlayer.convertUrlToId(url1);
    _controller=YoutubePlayerController(initialVideoId: vedioID!,
      flags:const YoutubePlayerFlags(autoPlay: false,),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('music...',style: TextStyle(color:Color(0xff093648) ),),
        backgroundColor: Color(0xffF6F6F6),
      ),
      body: Center(
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              YoutubePlayer(controller: _controller,
              showVideoProgressIndicator: true,
              onReady: ()=>debugPrint("Ready"),
              bottomActions: [
                CurrentPosition(),
                ProgressBar(isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Color(0xff093648),
                  handleColor: Color(0xff093648),
                ),
                ),
                const PlaybackSpeedButton(),
                FullScreenButton(),
              ],
              )

            ],
      ),
      ),

    );
  }
}