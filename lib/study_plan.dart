//import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:app_skill_harvest/authentication/login_page.dart';
import 'package:app_skill_harvest/core/util/app_image.dart';
import 'package:app_skill_harvest/authentication/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gap/gap.dart';



class StudyPlan extends StatelessWidget {
  const StudyPlan({super.key});

  @override
  Widget build(BuildContext context) {

    void onTap(){
      Navigator.of(context).push(
         MaterialPageRoute(
            builder: (context) => const SignUpPage()));
    }
    return  Scaffold(
      body: SafeArea(
        top: true,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
   
              SvgPicture.asset(AppImage.illustration3),
              
                
              const Text("Create your own\n study plan", 
               textAlign: TextAlign.center,
              style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
               const   Gap(20),
              const Text("study according to the\n study plan, make study more\n motivated", 
              style: TextStyle(color: Colors.grey,fontSize: 15) ,
              textAlign: TextAlign.center,),


               const     Gap(50),

               
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                ElevatedButton(onPressed:  onTap, 
                style: ElevatedButton.styleFrom(
                  elevation: 12,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                  backgroundColor: const Color.fromARGB(255, 4, 8, 241), minimumSize: const Size(150, 50)),
                child:const Text("Sign up", style: TextStyle(color: Colors.white),)),
              
              const  Gap(5),
            
                OutlinedButton(onPressed: (){
                  Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const LoginPage()));
                }, 
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                  minimumSize: const Size(150, 50),
                  shape:ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)), ),
                child: const Text("Log in", style: TextStyle(color: Colors.blue),))
             
                
              ],
            )
              
            ],
          ),
        ),
      ),
    );
  }
}