import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 16),
                  child: Text(
                    "Agora ! ",
                    style: GoogleFonts.indieFlower(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 61, 60, 60),
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 5),
                  child: Image.asset(
                    "Assets/icons/notification.png",
                    width: 28,
                    height: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left : 14.0 , top: 33 ),
              child: Row(
                children: [
                  SizedBox(
                    
                    child: TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      labelPadding: const EdgeInsets.only(right: 08),  
                      labelColor: const Color.fromARGB(255, 0, 0, 0),
                      unselectedLabelColor: Colors.black26,
                      labelStyle: const TextStyle(
                        fontFamily: "jakarta",
                        fontWeight: FontWeight.w500,
                        fontSize: 15 ,
                      ),
     dividerColor: Colors.transparent,
                      controller: tabController,
                      tabs: const [
                        Tab(text: "play"),
                        Tab(text: "agora scene"),
                        Tab(text: "best"),
                        Tab(text: "niggas"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: TabBarView(
                controller: tabController,
                children: const [
                  Text(
                    'hello',
                    style: TextStyle(fontSize: 12, color: Colors.black26),
                  ),
                  Text(
                    'niggas',
                    style: TextStyle(fontSize: 12, color: Colors.black26),
                  ),
                  Text(
                    'hello',
                    style: TextStyle(fontSize: 12, color: Colors.black26),
                  ),
                  Text(
                    'niggas',
                    style: TextStyle(fontSize: 12, color: Colors.black26),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}