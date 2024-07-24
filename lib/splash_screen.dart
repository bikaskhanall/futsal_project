import 'package:flutter/material.dart';
import 'package:project_futsal/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    // Simulate a delay for loading data
    await Future.delayed(const Duration(seconds: 1));

    // Navigate to the main screen after loading data
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Loginpage(),));
  }

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(color: Colors.green,
            strokeWidth: 20,
          ),
        ),
      ),
    );
  }
}
