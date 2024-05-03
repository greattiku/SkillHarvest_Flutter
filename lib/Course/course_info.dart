import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class CourseList extends StatelessWidget {
  const CourseList({
    super.key,
    required this.courseName,
    required this.facilitator,
    required this.price,
    required this.time,
  });

  final String courseName;
  final String facilitator;
  final String price;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3)),
            const BoxShadow(
                color: Colors.transparent,
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.supervisor_account_rounded,
                      size: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        facilitator,
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\$$price',
                      style: const TextStyle(
                          color: Color.fromARGB(
                            255,
                            45,
                            3,
                            236,
                          ),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFFFEBF0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          time,
                        style: const TextStyle(
                              color: Color(0xFFFF6905), fontSize: 12),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
