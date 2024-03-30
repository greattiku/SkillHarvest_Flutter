
import 'package:flutter/material.dart';

// class ProgressPlan extends StatelessWidget {
//   const ProgressPlan({
//     super.key,
 
//     required this.screenWidth,

   
//   });
    

//     final double screenWidth;
  
   
//   @override
//   Widget build(BuildContext context) {
//     //  final double  progressBar = totalVideos/ coveredVideos;
    
//     return Container(
//       // margin: const EdgeInsets.only(left: 10,right: 10),
//       // width: screenWidth,
//       // height: 120,
      
//       // decoration:  BoxDecoration(
//       // //  border: const Border(bottom: BorderSide(width:2.0)),
//       //   boxShadow:[
//       //       BoxShadow(color: Colors.grey.withOpacity(0.3),
//       //             spreadRadius: 1,
//       //             blurRadius: 5,
//       //             offset: const Offset(0, 3)),
//       //             const BoxShadow(
//       //             color: Colors.transparent,
//       //             spreadRadius: 1,
//       //             blurRadius: 5,
//       //             offset: Offset(0, 3)), ],
//       //   color: Colors.white,borderRadius: const BorderRadius.all(Radius.circular(15))),
           
   
 
//     );
//   }
// }

class CircularProgressPlan extends StatelessWidget {
  const CircularProgressPlan({
    super.key,
    //required this.progressBar,
    required this.coveredVideos,
    required this.totalVideos,
    required this.title,
    
  });

 // final double progressBar;
  final int coveredVideos;
  final int totalVideos;
  final String title;
   

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double progressBar = totalVideos / coveredVideos;
    return Container(  margin: const EdgeInsets.only(left: 10,right: 10),
      width: screenWidth,
      height: 120,
      
      decoration:  BoxDecoration(
      //  border: const Border(bottom: BorderSide(width:2.0)),
        boxShadow:[
            BoxShadow(color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3)),
                  const BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3)), ],
        color: Colors.white,borderRadius: const BorderRadius.all(Radius.circular(15))),
           
   
      child: Column(
        children: [
          Row(
            children: [
              CircularProgressIndicator(
                value: progressBar,
                backgroundColor: Colors.blue,
                color: Colors.grey,
              ),
              Text(title),
         
              Text.rich(
                TextSpan(text: '$coveredVideos', children: [
                  TextSpan(
                      text: '$totalVideos',
                      style: const TextStyle(color: Colors.grey))
                ]),
              ),
            ],
          ),
          Row(
            children: [
              CircularProgressIndicator(
                value: progressBar,
                backgroundColor: Colors.blue,
                color: Colors.grey,
              ),
             Text(title),
              Text.rich(
                TextSpan(text: '$coveredVideos', children: [
                  TextSpan(
                      text: '$totalVideos',
                      style: const TextStyle(color: Colors.grey))
                ]),
              ),
            ],
          ),
           Row(
            children: [
      
             Text(title),
              Text.rich(
                TextSpan(text: '$coveredVideos', children: [
                  TextSpan(
                      text: '$totalVideos',
                      style: const TextStyle(color: Colors.grey))
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}