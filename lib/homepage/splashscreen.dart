import 'package:flutter/material.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoHome();
  }
  _navigatetoHome()async{
    await Future.delayed(Duration(milliseconds: 1500));

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
