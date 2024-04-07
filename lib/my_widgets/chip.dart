import 'package:flutter/material.dart';


class CourseFilterChip extends StatefulWidget {
  const CourseFilterChip({super.key,
 required this.text,
 
  });

final String text;
  

   

  @override
  State<CourseFilterChip> createState() => _CourseFilterChipState();
}

class _CourseFilterChipState extends State<CourseFilterChip> {
  bool isSelected1 = false;
  @override
  Widget build(BuildContext context) {
   
    return  Wrap(
        spacing: 10.0,
        children: [
          FilterChip(
            label: Text(widget.text,
            style:  TextStyle(
              fontSize: 12,
              color: isSelected1 ? Colors.white : const Color(0xFF858597)),),
             
            selected: isSelected1,
            checkmarkColor: Colors.white,
           selectedColor: const Color.fromARGB(255, 10, 10, 243),
           backgroundColor: const Color(0xFFF4F3FD),
            side: BorderSide.none,
            onSelected: ( isSelected, ){
              setState(() {
                            isSelected1 = isSelected;
                          });
          }),
      
       
        ],
      );
    // );
  }
}


