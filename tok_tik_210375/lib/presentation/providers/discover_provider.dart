import 'package:flutter/material.dart';
import 'package:tok_tik_210375/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  bool initialLoading = true;
  List<VideoPost> videos = [];


  Future<void> loadNextPage() async {

    notifyListeners();
  }


}