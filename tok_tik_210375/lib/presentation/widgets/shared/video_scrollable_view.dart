import 'package:flutter/material.dart';
import 'package:tok_tik_210375/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.pink),
        Container(color: Colors.purple),
        Container(color: Colors.yellow),
      ],
    );
  }
}