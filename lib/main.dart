import 'package:flutter/material.dart';
import 'package:onfinance/screens/homepage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to OnFinance',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 0, 0, 0)),
      ),
      home: HomePage(),
    );
  }
}
