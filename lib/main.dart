import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue,
          secondary: Colors.greenAccent,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Morning',
            fontSize: 68.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            letterSpacing: 2.0,
          ),
          bodyMedium: TextStyle(
            fontSize: 18.0,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Asiloja',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/logoAsimov.png'),
        radius: 20,
      ),
    ),
  ],
      ),
      body: Center(
        child: Text('Primeiras resoluções') 
      ),
    );
  }
}
