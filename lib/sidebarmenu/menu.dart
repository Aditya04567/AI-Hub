// import 'package:app2/pages/explore_aitools.dart';
import 'package:app2/pages/community.dart';
import 'package:app2/sidebarmenu/drawerlist.dart';
import 'package:app2/slider/slider2.dart';
import 'package:flutter/material.dart';
import 'package:app2/pages/calculator.dart';

class Menulist extends StatefulWidget {
  const Menulist({super.key});

  @override
  State<Menulist> createState() => _MenulistState();
}

class _MenulistState extends State<Menulist> {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: Material(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24.0, 0),
            child: Column(
              children: [
                headerWidget(),
                const SizedBox(height: 40,),
                const Divider(thickness: 1, height: 10, color: Colors.grey),
                const SizedBox(height: 40,),
                DrawerItem(
                  name: "Home",
                  icon: Icons.home,
                  onPressed: () => onItemPressed(context, index: 0),
                ),
                const SizedBox(height: 30,),
                DrawerItem(
                  name: "Calculator",
                  icon: Icons.calculate,
                  onPressed: () => onItemPressed(context, index: 1),
                ),
                const SizedBox(height: 30,),
                const Divider(thickness: 1, height: 10, color: Colors.grey),
                const SizedBox(height: 30,),
                DrawerItem(
                  name: "Explore AI Tool",
                  icon: Icons.explore,
                  onPressed: () => onItemPressed(context, index: 2),
                ),
                const SizedBox(height: 30,),
                 DrawerItem(
                  name: "Community",
                  icon: Icons.chat,
                  onPressed: () => onItemPressed(context, index: 3),
                ),
                const SizedBox(height: 30,),
                const Divider(thickness: 1, height: 10, color: Colors.grey),
                const SizedBox(height: 30,),
                 DrawerItem(
                  name: "Setting",
                  icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 4),
                ),
                const SizedBox(height: 30,),
                 DrawerItem(
                  name: "Log Out",
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 5),
                ),
                 
              ]
            ),
          )
        ),
    );
  }
  void onItemPressed(BuildContext context,{required int index}){
    Navigator.pop(context);
    
    switch(index){
      case 0: Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const Sliderscreen()));
      break;

      case 1: Navigator.push(context, 
      MaterialPageRoute(builder: (context) =>  Calculator()));
      break;

      case 3: Navigator.push(context, 
      MaterialPageRoute(builder: (context) => const Communitychat()));
      break;
      
    }
}
Widget headerWidget() {
  return Row(
    children: [
      const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/images/Aditya.jpeg'),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Aditya Agrawal', style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 10,),
          Text('adityaagrawal0410@gmail.com', style: TextStyle(fontSize: 10, color: Colors.white),),
        ],
      ),
    ],
  );
}
}
