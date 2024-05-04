

import 'package:flutter/material.dart';




// ignore: must_be_immutable
class CourseVideos extends StatefulWidget {
 const CourseVideos({super.key,
   required this.courseTitle,
  required this.courseNo,
  required this.duration,
 
  
 
  });

  final String courseTitle;
  final int courseNo;
  final String duration;
  
  


  @override
  State<CourseVideos> createState() => _CourseVideosState();
}

class _CourseVideosState extends State<CourseVideos> {

 
   @override
  Widget build(BuildContext context) {
    bool isPlaying = true;
   
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('${widget.courseNo}', style:const TextStyle(color: Colors.grey, fontSize: 50),),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text(widget.courseTitle, style: const TextStyle(fontWeight: FontWeight.bold),),
                    Row(
                      
                      children: [
                        Text(widget.duration,style: TextStyle(color: Color.fromARGB(255, 23, 7, 243)),),
            
                      ],
                    )
                  ],),
                   
                  ],
                ),
              ],
            ),

               isPlaying? 
                  const Icon(Icons.play_circle, 

                 size: 50,
                 color: Color.fromARGB(255, 10, 6, 248),)
                 : const Icon(Icons.lock_rounded)
          ],
        )
      ],
    );
  }
}



// class SamplePlayer extends StatefulWidget {
//   SamplePlayer({Key? key}) : super(key: key);

//   @override
//   _SamplePlayerState createState() => _SamplePlayerState();
// }

// class _SamplePlayerState extends State<SamplePlayer> {
//   late FlickManager flickManager;
//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController:
//           VideoPlayerController.networkUrl(Uri.parse("url"),
//     ));
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: AspectRatio(
//         aspectRatio: 16/10,
//         child: FlickVideoPlayer(
//           flickManager: flickManager,
//         ),
//       ),
//     );
//   }
// }