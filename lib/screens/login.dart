import 'package:cs3midlogin/ui/iconbutton.dart';
import 'package:cs3midlogin/ui/logo.dart';
import 'package:cs3midlogin/ui/textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  bool checked = false;

  @override
  Widget build(BuildContext context) {

    bool isLandscapeMobile = MediaQuery.of(context).size.height < 450;

    // if mobile=200, tablet=400, desktop=600, web=800
    double screenWidth = MediaQuery.of(context).size.width;
    double mediaQueries;

    if (screenWidth < 600) {
      mediaQueries = 0; // Mobile
    } else if (screenWidth < 1200) {
      mediaQueries = 150.0; // Tablet
    } else if (screenWidth < 1600) {
      mediaQueries = 200.0; // Desktop
    } else {
      mediaQueries = 250.0; // Web
    }

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(100, 95,67,195), // Adjust the opacity and color for the tint
                  BlendMode.srcATop,
                ),
                child: Image(image: AssetImage('assets/bg-cs4.jpg')),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: !isLandscapeMobile ? 340 : 10,
                  child: !isLandscapeMobile ? Transform.translate(
                    offset: const Offset(0, 20),
                    child: const MyLogo()
                  ): null
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: mediaQueries, right: mediaQueries),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Welcome!', style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 95,67,195)
                            )),
                            Transform.translate(
                              offset: const Offset(0, -20.0),
                              child: Row(
                                children: [
                                  const Text('Dont have an account?', style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                  )),
                                  Transform.translate(
                                    offset: const Offset(-7, 0),
                                    child: TextButton(
                                      onPressed: () {
                                        // Navigate to /signup route
                                        Navigator.pushNamed(context, '/signup');
                                      },
                                      style: TextButton.styleFrom(
                                        overlayColor: Colors.transparent, // Remove hover effect
                                      ),
                                      child: const Text(
                                        'Sign up now!',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 150, 40, 37),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const MyTextField(label: 'Email', type: 'email',),
                            const SizedBox(height: 10),
                            const MyTextField(label: 'Password', type: 'password',),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(-5, 0),
                                      child: Checkbox(
                                        value: checked,
                                        onChanged: (value) {
                                          setState(() {
                                            checked = value!;
                                          });
                                        },
                                        activeColor: const Color.fromARGB(255, 119, 26, 128), 
                                        checkColor: const Color.fromARGB(255, 255, 255, 255), 
                                        side: const BorderSide(
                                          color: Color.fromARGB(255, 198, 109, 206),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: const Offset(-15, 0),
                                      child: const Text(
                                        'Remember me',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text('Forgot password?', style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey
                                )),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(255, 95,67,195),
                                        padding: const EdgeInsets.all(15),
                                        elevation: 10,
                                        
                                        shadowColor: const Color.fromARGB(255, 103, 130, 248),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      child: const Text('Login', style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(height: 50),
                                  const Text('Or login with', style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey
                                  )),
                                  const SizedBox(height: 10),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    
                                    children: [
                                      MyIcon(icon: FontAwesomeIcons.facebookF, color:Color.fromARGB(255, 22, 92, 150)),
                                      SizedBox(width: 10),
                                      MyIcon(icon: FontAwesomeIcons.twitter, color: Colors.blue),
                                      SizedBox(width: 10),
                                      MyIcon(icon: FontAwesomeIcons.google, color: Colors.red),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}