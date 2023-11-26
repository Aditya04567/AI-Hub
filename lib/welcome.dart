import 'package:flutter/material.dart';
import 'Authentication/loginpage.dart'; 
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset('assets/images/Aditech.jpg'),
          
        ),
        const Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Discover AI that talks about your interests! Whether you're into cutting-edge technology, futuristic innovations, or simply have a curious mind, there's something extraordinary waiting for you in our TechAdi AI Hub.",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto', 
              fontSize: 20,
            ),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) => const Loginscreen()));
            },
            child: const Text("Get Started"),
          ),
        ),
        const Spacer()
      ]),
    );
  }
}
