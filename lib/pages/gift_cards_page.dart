import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../widgets/nav_bar.dart';

class GiftCardsPage extends StatefulWidget {
  @override
  _GiftCardsPageState createState() => _GiftCardsPageState();
}

class _GiftCardsPageState extends State<GiftCardsPage> {
  late VideoPlayerController _controller;
  bool _isVideoInitialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/join1.mov')
      ..initialize().then((_) {
        setState(() {
          _isVideoInitialized = true;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playVideo() {
    if (_isVideoInitialized) {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isVideoInitialized)
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          else
            CircularProgressIndicator(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _playVideo,
            child: Text('Play Video'),
          ),
        ],
      ),
    );
  }
}
