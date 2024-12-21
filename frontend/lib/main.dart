import 'package:flutter/material.dart';
import 'package:frontend/providers/Users.dart';
import 'package:frontend/screens/homepage.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Users()),

      ],
      child: MaterialApp(
        
        title: 'Debate App',
        theme: ThemeData(
            splashFactory: NoSplash.splashFactory,
          useMaterial3: true,
        
        ),
        
        debugShowCheckedModeBanner: false ,
        home: const Homepage(),
      ),
    );
  }
}


