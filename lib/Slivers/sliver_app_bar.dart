
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SliverApp extends StatelessWidget {
  const SliverApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmp7jaFp5v2TudqniYKGhx2fLfzmydMsdoXg&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQf70JKByXMFon1GZPqLHveuJHFUUGlsgpg&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0fmnjow3Cuy2zePSwvE6-6l-mcr94u336aA&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcJktFfd_BgIgQ-KxDcylIuFrcwHFjd0ghug&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFrThpWCeOVE2m65s93FdXbvF56SDlBVZIA&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS70xCwWq0zFws1EtvfVk0gAxxwWQV7mOMxog&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQf70JKByXMFon1GZPqLHveuJHFUUGlsgpg&s",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWhnHCycziUGtDNAiSti1imGSPo4O8clZqjg&s",
          ];
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            backgroundColor: Color.fromARGB(255, 250, 85, 3),
            expandedHeight: 200,
            // title: const Text("My App Bar",
            // style: TextStyle(color: Colors.white),),
            leading: const Icon(Icons.arrow_back,color: Color.fromARGB(255, 4, 242, 16),size: 40,),
            actions: const [
              Icon(Icons.settings,
              color: Color.fromARGB(255, 4, 242, 16),size: 40,),
              SizedBox(width: 12),
            ],
           //pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
              background: Image.network('https://static.vecteezy.com/system/resources/previews/040/703/992/non_2x/ai-generated-nigerian-jollof-rice-generative-ai-photo.jpg',
              fit: BoxFit.fill,),
              centerTitle: true,
              title:  RichText(
               
                text: const TextSpan(
                style: TextStyle(fontSize: 30,color: Colors.white),
              children: [
                TextSpan(text: "My"),
                TextSpan(text: " Kitchen",
                style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                TextSpan(text: " Delight")
              ]))
            ),
          ),


          
           
          SliverToBoxAdapter(
              child: GridView.builder(
                padding: EdgeInsets.all( 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust the number of columns as needed
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0, // Adjust the aspect ratio as needed
                ),
                itemCount: imageUrls.length, // Number of containers
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Prevents scrolling of GridView within SliverToBoxAdapter
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(imageUrls[index],
                  fit: BoxFit.cover,);
                  
                  
                  
                  
                   //Container(
                  //   color: Color.fromARGB(255, 255, 90, 7),
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     'Container $index',
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // );
                },
              ),
            ),
        

          //   SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Center(
          //         child: Text("item 1",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //     ),
          //   ),),
          // ),

          //   SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Center(
          //         child: Text("item 2",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //     ),
          //   ),),
          // ),
          //     SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Center(
          //         child: Text("item 3",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //     ),
          //   ),),
          // ),
          //     SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Text("item 4",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //     ),
          //   ),),
          // ),
          //     SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Text("item 5",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //     ),
          //   ),),
          // ),
          //    SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Center(
          //         child: Text("item 6",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //     ),
          //   ),),
          // ),
          //    SliverToBoxAdapter(
          //   child: Padding(padding: const EdgeInsets.all(20),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       height: 50,
          //       color: Colors.deepPurple[300],
          //       child: const Center(
          //         child: Text("item 7",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          //       ),
          //     ),
          //   ),),
          // ),
        ],
      ),
    );
  }
}
