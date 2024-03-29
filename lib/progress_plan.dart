import 'package:flutter/material.dart';

class ProgressPlan extends StatelessWidget {
  const ProgressPlan({
    super.key,
    required this.title,
  required this. totalVideos,
  required this.coveredVideos,
    required this.screenWidth,
   
  });

    final double screenWidth;
      final  String title;
    final int totalVideos;
    final int coveredVideos;
  final double progressBar = coveredVideos/ totalVideos

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10),
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
   
       child:   Row(
      children: [
        CircularProgressIndicator(
          value: progressBar,
          backgroundColor: Colors.blue,
          color: Colors.grey,
        ),

      ],
    ),
    );
  }
}

 // title: "packaging Design",
        // coveredVideos: 40,
        // totalVideos: 48,),
        // const Text.rich(TextSpan(
        //   text: "20",
        //   style: TextStyle(fontWeight: FontWeight.bold),
        //   children: [
        //     TextSpan(
        //      text: "/60min",
        //      style: TextStyle(color: Colors.grey, fontSize: 10))
        //   ]
        // ))