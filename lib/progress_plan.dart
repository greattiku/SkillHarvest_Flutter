
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class CircularProgressPlan extends StatelessWidget {
  const CircularProgressPlan({
    super.key,
   
    required this.coveredVideos,
    required this.totalVideos,
    required this.title,
    
  });


  final int coveredVideos;
  final int totalVideos;
  final String title;
   

  @override
  Widget build(BuildContext context) {

    final double progressBar = coveredVideos / totalVideos;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 18,
              width: 18,
              child: CircularProgressIndicator(
                strokeWidth: 4,
                value: progressBar,
                backgroundColor: Colors.blue,
                color: Colors.grey,
              ),
            ),
          const  Gap(8),
            Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
           
        Text.rich(
          TextSpan(text: '$coveredVideos', children: [
            TextSpan(
                text: '/$totalVideos',
                style: const TextStyle(color: Colors.grey))
          ]),
        ),
      ],
    );
  }
}


