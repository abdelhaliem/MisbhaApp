import 'package:flutter/material.dart';
import 'package:misbha_app/screens/home_screen.dart';

void main(){
  runApp(const Home());
}
class Home extends StatelessWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'مسبحة',
      theme: ThemeData(
        primaryColor: Colors.red,
      fontFamily:'ElMessiri'
      ),
      home: HomeScreen(),
    );
  }

}


