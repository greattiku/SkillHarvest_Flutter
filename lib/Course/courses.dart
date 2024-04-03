import 'package:app_skill_harvest/core/util/app_image.dart';

import 'package:app_skill_harvest/Course/course_tracks.dart';
import 'package:app_skill_harvest/Course/modal_sheet.dart';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      height: 1000,
      child: Container(
        margin: const EdgeInsets.only(right: 20, left: 15, top: 15, bottom: 15),
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Course",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(AppImage.manAvatar),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              // padding: const EdgeInsets.only(right: 50),
              height: 50,
              width: 430,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFF4F3FD)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
         MaterialPageRoute(
            builder: (context) => const ModalSheet())); 
                          }, icon: const Icon(Icons.search)),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: const InputDecoration(
                              hintText: "Find Course",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.tune_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 30),
                    height: 100,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xFFCEECFE),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset(
                              AppImage.ladyHandsOnHead,
                              height: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 70, right: 10, left: 100),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),

                                // child: const Align(alignment: Alignment.bottomRight,
                                child: const Text(
                                  "Language",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.blue),
                                ),
                                // ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 30),
                    height: 100,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFE0FF),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset(
                              AppImage.ladyPainting,
                              height: 120,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 70, right: 0, left: 100),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),

                               
                                child: const Text(
                                  "Painting",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFF9065BE)),
                                ),
                                // ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Choose your course",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor:
                                const Color.fromARGB(255, 5, 37, 246),
                            minimumSize: const Size(60, 30)),
                        child: const Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))),
                const Gap(30),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Gap(30),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            const Gap(20),
            const CourseTracks(),
          ],
        ),
      ),
    )));
  }
}
