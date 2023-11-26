// import 'package:flutter/material.dart';

// class ExploreAIpage extends StatefulWidget {
//   const ExploreAIpage({super.key});

//   @override
//   State<ExploreAIpage> createState() => _ExploreAIpageState();
// }

// class _ExploreAIpageState extends State<ExploreAIpage> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this, initialIndex: 0).addListener(() { });
    
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Explore AI"),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//       ),

//       body: Column(
//         children: [
//           Container(
//             child: TabBar(
//               controller: _tabController,
//               tabs: [
//                 Tab(icon: Icon(Icons.home),),
//                 Tab(icon: Icon(Icons.favorite),),
//                 Tab(icon: Icon(Icons.person),)
              
//             ]),
//           )
//         ]
//       )
//     );
//   }
// }