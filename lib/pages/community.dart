import 'package:app2/slider/slider2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Communitychat extends StatefulWidget {
  const Communitychat({Key? key}) : super(key: key);

  @override
  State<Communitychat> createState() => _CommunitychatState();
}

class _CommunitychatState extends State<Communitychat>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        title: Text(
          'Community',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFF202020),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const Sliderscreen()),
            );
          },
        ),
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.group),),
              Text('Chats'),
              Text('Stories'),
              Text('Groups'),

            ],
          ),
        ],
      ),
    );
  }
}
