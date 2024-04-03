import 'package:app_skill_harvest/Course/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModalSheet extends StatefulWidget {
  const ModalSheet({
    super.key,
  });

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15))),
                  builder: (BuildContext context) {
                    return Stack(
                      //for the little container at the top
                      alignment: AlignmentDirectional.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: -15,
                            child: Container(
                              color: Colors.white,
                              width: 60,
                              height: 7,
                            )),
                        Container(
                          //wrap the draggable widget in a container for it to expand
                          width: 500,
                          child: DraggableScrollableSheet(
                              //use this widget if u want to be able to drag it up
                              initialChildSize: 0.6,
                              minChildSize: 0.25,
                              maxChildSize: 1,
                              expand: false,
                              builder: (BuildContext context,
                                      scrollController) =>
                                  SingleChildScrollView(
                                      controller: scrollController,
                                      child: SizedBox(
                                        height: 600,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10, top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon:
                                                          const Icon(Icons.close)),
                                                  const Gap(80),
                                                  const Text(
                                                    "Search Filter",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SearchFilter(),
                                          ],
                                        ),
                                      ))),
                        ),
                      ],
                    );
                  });
            },
            child: const Text("Button",
            style: TextStyle(color: Colors.blue),)),
      ),
    );
  }
}
