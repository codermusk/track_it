import 'package:flutter/material.dart';
import 'package:track_it/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        fontFamily: 'Ubuntu',
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Track IT...!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(10,20,0,0),
          child: Row(
            children: [
              Icon(
                Icons.currency_rupee,
                size: 35,
                color: Colors.blueAccent,
              ),
              Text(
                'Track IT...!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34
                ),
              ),
            ],
          ),
        ),
      ),
      body: HomeView(),
    );
  }
}
