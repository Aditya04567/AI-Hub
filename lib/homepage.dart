// import 'package:flutter/material.dart';

// final Color backgroundColor = Color(0xFF4A4A58);

// class Menupage extends StatefulWidget {
//   const Menupage({super.key});

//   @override
//   State<Menupage> createState() => _MenupageState();
// }

// class _MenupageState extends State<Menupage> {
//   bool isCollapsed = true;
//   late double screenWidth, screenHeight;
//   final Duration duration = const Duration(milliseconds: 300);

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen width and height using MediaQuery
//     Size size = MediaQuery.of(context).size;
//     screenHeight = size.height;
//     screenWidth = size.width;
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: Stack(
//         children: <Widget>[
//           menu(context),
//           dashboard(context),
//         ],
//       ),
//     );
//   }

// Widget menu(context) {
//   return  Padding(
//     padding: const EdgeInsets.only(left: 16.0),

//     child: Align(
//       alignment: Alignment.centerLeft,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text("Home",style: TextStyle(color: Colors.white, fontSize: 20)),
//           SizedBox(height: 10),
//           Text("Explore AI Tools",style: TextStyle(color: Colors.white, fontSize: 20)),
//           SizedBox(height: 10),
//           Text("Tool Details",style: TextStyle(color: Colors.white, fontSize: 20)),
//           SizedBox(height: 10),
//           Text("Community",style: TextStyle(color: Colors.white, fontSize: 20)),
//         ],
//         ),
//     ),
//   );
  
// }

// Widget dashboard(context){
//   return AnimatedPositioned(
//     duration: duration,
//     top: isCollapsed ? 0:0.2 *screenHeight,
//     left: isCollapsed ? 0:0.2 *screenHeight,
//     bottom:isCollapsed ? 0: 0.6 *screenWidth,
//     right:isCollapsed ? 0: -0.4 *screenWidth,
//     child: Material(
//       color: backgroundColor,
//       child: Container(
//         padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(child: Icon(Icons.menu, color: Colors.white,), onTap: () {
//                   setState(() {
//                     isCollapsed != isCollapsed;
//                   }
//                   );
//                 },),
//                 Text("AI HUB", style: TextStyle(fontSize: 24, color: Colors.white),),
//                 Icon(Icons.settings, color: Colors.white,),
//               ],
//             )
//           ],
//         ),
//       ),
//     ),
//   );
// }
// }
