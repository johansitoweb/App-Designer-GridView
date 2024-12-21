import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Food Items', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 2/3,
          children: [
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 3', '../assets/food3.jpg'),
            itemFood('Awesome Food 4', '../assets/food4.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 3', '../assets/food3.jpg'),
            itemFood('Awesome Food 4', '../assets/food4.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 3', '../assets/food3.jpg'),
            itemFood('Awesome Food 4', '../assets/food4.jpg'),
            itemFood('Awesome Food 3', '../assets/food3.jpg'),
            itemFood('Awesome Food 4', '../assets/food4.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 3', '../assets/food3.jpg'),
            itemFood('Awesome Food 4', '../assets/food4.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
            itemFood('Awesome Food 2', '../assets/food2.jpg'), 
            itemFood('Awesome Food 2', '../assets/food2.jpg'),
          ],
        ),
      ),
    );
  }

  itemFood(String title, String img) => Container(
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(img, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
  );
}