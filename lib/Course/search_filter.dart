import 'package:app_skill_harvest/my_widgets/chip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key,});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.width;
    double startValue =90;
   double endValue = 200;
    
    return  Container(
      margin: const EdgeInsets.only(left: 10,right: 10,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text("Categories",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(
                width:screenWidth,
                height: 30,
                child: const Row(
                  children: [
                    CourseFilterChip(
                      text: 'Design',
                    ),
                    Gap(2),
                     CourseFilterChip(
                      text: "Painting",
                    ),
      
                    Gap(2),
                     CourseFilterChip(
                      text: "Coding",
                    ),
                  ],
                ),
              ),
              const Gap(15),
               SizedBox(
                width: screenWidth,
                 child: const Row(
                   children: [
                     CourseFilterChip(
                      text: "Music",),
                       Gap(2),
                     CourseFilterChip(
                      text: "Visual identity",),
                       Gap(2),
                     CourseFilterChip(
                      text: "Mathematics",
                                 ),
                   ],
                 ),
               ),
               Container(
              
                padding: const EdgeInsets.only(top: 5,),
                 child: const Text("Price",
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
               ),
              
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  RangeSlider(
                  labels: RangeLabels('$startValue', '$endValue'),
                  activeColor: const Color.fromARGB(255, 5, 13, 231),
                  inactiveColor:  Colors.blue.withOpacity(0.3),
                   min: 0.0,
                  max: 300.0,
                  values:RangeValues( startValue, endValue),
                  onChanged: (values){
                  setState(() {
                  startValue = values.start;
                  endValue = values.end;
                   });
                   }, 
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$$startValue'),
                    const  Gap(85),
                      Text('\$$endValue')
                    ],)
                ],
              ),
              Container(
               
                padding: const EdgeInsets.only(top: 10,),
                 child: const Text("Duration",
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
               ),
              SizedBox(
                width:screenWidth,
                height: 30,
                child: const Row(
                  children: [
                    CourseFilterChip(
                      text: '3-8hours',
                    ),
                    Gap(2),
                     CourseFilterChip(
                      text: "8-14hours",
                    ),
      
                    Gap(2),
                     CourseFilterChip(
                      text: "14-20hours",
                    ),
                  ],
                ),
              ),
               const Gap(10),
               const Row(
                 children: [
                   CourseFilterChip(
                    text: "20-24hours",),
                     Gap(2),
                   CourseFilterChip(
                    text: "24-30hours",),
                     Gap(2),
                   CourseFilterChip(
                    text: "30-36hours",),
                 ],
               ),

               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        side: const BorderSide(color: Color.fromARGB(255, 6, 39, 228),),
                      ),
                      onPressed: (){
                      Navigator.pop(context);
                     }, child: const Text("Clear",
                     style: TextStyle(color: Color.fromARGB(255, 15, 15, 250)),),),
                 
                     const Gap(20),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         elevation: 12,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                    backgroundColor: const Color.fromARGB(255, 4, 8, 241), 
                    minimumSize: const Size(150, 40)),
                      
                      onPressed: (){
                      Navigator.pop(context);
                     }, child: const Text("Apply Filter",
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.white),)),
                   
                   
                   ],
                 ),
               )
          ]
        ),
    );
    // );
  }
}