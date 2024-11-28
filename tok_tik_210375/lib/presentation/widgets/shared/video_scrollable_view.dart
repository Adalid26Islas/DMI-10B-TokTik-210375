import 'package:flutter/material.dart';
import 'package:tok_tik_210375/domain/entities/video_post.dart';
import 'package:tok_tik_210375/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // Video Player + gradiente
            
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            )
            // Botones
            
            
          ],
        );

      },
    );
  }
}