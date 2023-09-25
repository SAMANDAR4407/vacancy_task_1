import 'package:flutter/material.dart';
import 'package:vacancy_task/pages/home/home_page.dart';
import 'package:vacancy_task/util/setup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
