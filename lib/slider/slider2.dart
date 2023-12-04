import 'package:app2/sidebarmenu/menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Sliderscreen extends StatefulWidget {
  const Sliderscreen({Key? key}) : super(key: key);

  @override
  State<Sliderscreen> createState() => _SliderscreenState();
}

class _SliderscreenState extends State<Sliderscreen> {
  bool isCollapsed = true;
  final myitems = [
    SimpleShadow(
      child: Image.asset('assets/images/chatgpt.jpeg'),
      opacity: 0.6, // Default: 0.5
      color: Colors.black, // Default: Black
      offset: Offset(5, 5), // Default: Offset(2, 2)
      sigma: 7, // Default: 2
    ),
    SimpleShadow(
      child: Image.asset('assets/images/googlebard.jpeg'),
      opacity: 0.6,
      color: Colors.black,
      offset: Offset(5, 5),
      sigma: 7, // Default: 2,
    ),
    SimpleShadow(
      child: Image.asset('assets/images/leonardo ai.jpeg'),
      opacity: 0.6,
      color: Colors.black,
      offset: Offset(5, 5),
      sigma: 7, // Default: 2,
    ),
    SimpleShadow(
      child: Image.asset('assets/images/perplexity.png'),
      opacity: 0.6,
      color: Colors.black,
      offset: Offset(5, 5),
      sigma: 7, // Default: 2,
    ),
  ];
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menulist(),
      backgroundColor: Color(0xFFF0F0F0),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("AI HUB"),
      //   backgroundColor: Colors.transparent,
      //   automaticallyImplyLeading: false
      // ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.menu,
                        color: Color(0xFF202020),
                        size: 30,
                      ),
                      onTap: () {
                        setState(() {
                          Scaffold.of(context).openDrawer();
                        });
                      },
                    ),
                    Text(
                      "AI HUB",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF202020),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          
                        });
                      },
                      child: Icon(
                        Icons.settings,
                        color: Color(0xFF202020),
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                  ),
                  items: myitems
                      .map((item) => SimpleShadow(
                            child: item,
                            opacity: 0.6,
                            color: Colors.black,
                            offset: Offset(5, 5),
                            sigma: 7,
                          ))
                      .toList(),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      height: 50,
                      child:  Text('Discover the best in AI',
                      style: GoogleFonts.eduNswActFoundation(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Container(
                      child:  Text('Search Thousand of AI Tools',
                      style: GoogleFonts.eduNswActFoundation(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 63, 63, 63),                       
                      ),
                      ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        );
      }),
    );
  }
}
