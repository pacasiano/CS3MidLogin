import 'package:cs3midlogin/ui/drawer.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {

    // Get the screen width
    var screenWidth = MediaQuery.of(context).size.width;

    // Define a threshold for mobile/tablet screens (e.g., 600)
    bool isMobileOrTablet = screenWidth < 800;

    

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: isMobileOrTablet ? AppBar(
        centerTitle: false,
        title: const Text('PARKING GO', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.white
        )),
      ) : null,
      drawer: isMobileOrTablet ? const Drawer(
          child: MyDrawer(),
        )
      : null, // No drawer on larger screens
      body: Stack(
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
          Row(
          children: [
            !isMobileOrTablet ? Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 95,67,195),
              ),
              width: 250,
              child: const MyDrawer(),
            ) : Container(),
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image(image: AssetImage('assets/LOGO.png'))
                    ),
                  ],
                )
              ),
            )
          ],
        ),
        ],
      )
    );
  }
}