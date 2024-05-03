
import 'package:app_skill_harvest/Course/product_design.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class ProductDesignScreen extends StatefulWidget {
  const ProductDesignScreen({super.key});

  @override
  State<ProductDesignScreen> createState() => _ProductDesignScreenState();
}

class _ProductDesignScreenState extends State<ProductDesignScreen> {
  

  @override
  Widget build(BuildContext context) {
    //final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
              Column(
              children: [
              
                Container(
          color: const Color.fromARGB(255, 245, 182, 203),
          height: 300,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
             //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                      SvgPicture.asset(AppImage.bestSellerTag),
                      const SizedBox(
                              height: 20,
                            ),
                      const Text("Product Design v1.0", 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                       
                  ],
                ),
                SvgPicture.asset(AppImage.bestSellerHuman, height: 300,)
              ],
            ),
          ),
        ),
           
               
              ],
            ),
             
             Positioned(
          top: 260,
          left: 0,
          right: 0,
          // bottom: 5.0,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 0,
              top: 5,
            ),
            //padding: const EdgeInsets.only(bottom:40, left: 10, right: 10),
            height: screenHeight,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
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
                ],
                borderRadius: BorderRadius.circular(15.0)),
              child:  const Column(
                children: [
                  ProductDesign(
                    courseTitle: "Product Design v1.0", 
                    price: 74.00, 
                    duration: "6h 14min", 
                    noOfLessons: "24 Lessons",
                     courseSubTitleHeading: "About this course", 
                     courseSubTitleSubHeading: "Learn how to design your favorite Apps"),
                ],
              ),
           
          ),
        )
          ],
        ),
      ),
    );
  }
}

