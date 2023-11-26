import 'package:app2/Authentication/loginpage.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final Username = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  bool _passwordVisible = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D3256), // changed this line
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: Image.asset("assets/images/signup.jpg")
                  ),
                  const ListTile(
                    title: const Text(
                      "Register New Account",
                       textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto', 
                        fontSize: 30,
                       
                      ),
                    ),
                  ),
                  Container(
                            margin: const EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:  Colors.white.withOpacity(.3),
                            ),
                            child: TextFormField(
                              controller: Username,
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
                          //password
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
                          //confirmed password
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:  Colors.white.withOpacity(.3),
                            ),
                            child: TextFormField(
                              controller: confirmpassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                }
                                else if (
                                   password.text != confirmpassword.text) {
                                    return 'Password does not match';
                                  }
                                return null;
                              },
                              obscureText: !_passwordVisible, // modified this line
                              decoration: InputDecoration( // modified this line
                                icon: Icon(Icons.lock),
                                border: InputBorder.none,
                                hintText: "Retype-Password",
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
                          MaterialPageRoute(builder: (context) => const Loginscreen()));
                          
                        }
                      },
                     child: Text("SIGN UP", style: TextStyle(
                      fontSize: 15
                     ),),
                     ), // changed this line
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: TextStyle(color: Color(0xFFC0C0C0)),), // changed this line
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                          MaterialPageRoute(builder: (context) => const Loginscreen()));
                        },child: Text("Login", 
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
      ),
    );
  }
}