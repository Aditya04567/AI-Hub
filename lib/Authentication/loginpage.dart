import 'package:app2/Authentication/Signup.dart';
// import 'package:app2/homepage.dart';
import 'package:app2/slider/slider2.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool _passwordVisible = false; // added this line
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF3D3256), // changed this line
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(40),
                    height: 300,
                    child: Image.asset("assets/images/Secure login-bro.png")
                  ),
                  //Username code//
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Colors.white.withOpacity(.3),
                    ),
                    child: TextFormField(
                      controller: username,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "username"
                      ),
                    ),
                  ),
                  //password code//
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Colors.white.withOpacity(.3),
                    ),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      obscureText: !_passwordVisible, // modified this line
                      decoration: InputDecoration( // modified this line
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Login Button//
                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    width: MediaQuery.of(context).size.width*.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Color.fromARGB(255, 243, 243, 243), // changed this line
                      
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context, 
                          MaterialPageRoute(builder: (context) => const Sliderscreen()));
                          
                        }
                      },
                     child: Text("Login", style: TextStyle(
                      fontSize: 15
                     ),),
                     ), // changed this line
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: Color(0xFFC0C0C0)),), // changed this line
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                          MaterialPageRoute(builder: (context) => const Signuppage()));
                        },child: Text("Sign Up", 
                        style: TextStyle(color: Color(0xFFC0C0C0)
                        ),
                        ), // changed this line
                      )
                    ]
                  )
                ],
                
              ),
            ),
          ),
        ),
      )
    ); 
  }
}
