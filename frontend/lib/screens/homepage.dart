import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: SafeArea(
        child: 
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top : 18.0 , left  : 12 ),
                  child: Text(" Agora ! " , style : GoogleFonts.indieFlower(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 61, 60, 60), 
                      fontWeight: FontWeight.w600 , 
                      fontSize: 24
                    )
                  
                  )
                  
                                ),
                ),
              ],
            )
          ],
        )),
    );
  }
}



/// fonts opensans
/// quicksand
/// raleway
/// satisfy