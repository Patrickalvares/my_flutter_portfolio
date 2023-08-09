import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Remediando extends StatelessWidget {
  Remediando({Key? key}) : super(key: key);

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Zznm4VTGW0Y',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Row(
          children: [
            SizedBox(
              height: 579,
              width: 270,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 19.3 / 9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
