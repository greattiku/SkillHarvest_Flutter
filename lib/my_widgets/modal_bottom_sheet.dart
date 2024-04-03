import 'package:flutter/material.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  //draggable modal sheet
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 10, 25, 236)),
          child: const Text(
            "Search Filter",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15))),
                builder: (BuildContext context) {return
                  
                  Stack(  //for the little container at the top
                   alignment: AlignmentDirectional.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -15,
                        child: Container(
                          color: Colors.red,
                        width: 60,
                        height: 7,
                      )),
                      Container(//wrap the draggable widget in a container for it to expand
                        width: 500,
                        child: DraggableScrollableSheet(  //use this widget if u want to be able to drag it up
                          initialChildSize: 0.5,
                          minChildSize: 0.25,
                          maxChildSize: 1,
                          expand: false,
                          builder: (BuildContext context, scrollController) =>  
                           SingleChildScrollView(
                            controller: scrollController,
                            child: const Text("Hello",
                            textAlign: TextAlign.center,),
                            
                          )
                          
                                         
                        ),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

class HalfWayModalSheet extends StatefulWidget {
  const HalfWayModalSheet({super.key});

  @override
  State<HalfWayModalSheet> createState() => _HalfWayModalSheetState();
}

class _HalfWayModalSheetState extends State<HalfWayModalSheet> {
  @override
  Widget build(BuildContext context) {
    return   Center(      //use this widget if you don't want the shhet to be scrollable
       child: ElevatedButton(
         style: ElevatedButton.styleFrom(backgroundColor:const  Color.fromARGB(255, 10, 25, 236)),
         child: const Text("Search Filter",style: TextStyle(color: Colors.white),),
     onPressed: (){
       showModalBottomSheet(
         context: context, 
         isScrollControlled: true,
        builder: ( BuildContext context) {
        return Container(
          decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 158, 241),
          borderRadius: BorderRadius.circular(15)),
          height: 400,
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, 
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text("close",style: TextStyle(color: Colors.white),)),
          ),
        );
      });
    },),
    );
  }
}