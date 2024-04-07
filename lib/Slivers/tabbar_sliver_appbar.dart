import 'package:flutter/material.dart';

class TabBarSliverAppBar extends StatelessWidget {
  const TabBarSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        
        child: NestedScrollView(headerSliverBuilder: (context, value){
            return [
              const SliverAppBar(
                title: Text("hello"),
                bottom: TabBar(tabs: [
                  Tab(icon: Icon(Icons.map), text: "tab1"),
                  Tab(icon: Icon(Icons.portrait), text: "tab2"),
                ]),
              ),
            ];
        }, 
        
        body: TabBarView(
          children: [
           
             SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                color: Colors.deepPurple[300],
              ),
            ),),
          ),

           SliverToBoxAdapter(
            child: Padding(padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                color: Colors.deepPurple[300],
              ),
            ),),
          ),
          ],
        ),
        ),
      ),
    );
  }
}