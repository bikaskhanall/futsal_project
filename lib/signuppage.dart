import 'package:flutter/material.dart';
import 'package:project_futsal/api_service.dart';
import 'package:project_futsal/verificationpage.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({super.key});

  @override
  State<SignUppage> createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> { 
  final ApiService _apiService = ApiService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_passwordController.text == _confirmPasswordController.text) {
      _apiService.postData(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Verificationpage()),
      );
    } else {
      print('Passwords do not match');
      // Show an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 800,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/signuppageimage.jpg', 
                fit: BoxFit.cover,
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 350, right: 40), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none, 
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFDDDDDD),
                      filled: true,
                      labelText: 'Name',
                      labelStyle: const TextStyle(color: Colors.black), 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    style: const TextStyle(color: Colors.grey), 
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFDDDDDD),
                      filled: true,
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.black), 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    style: const TextStyle(color: Colors.grey), 
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFDDDDDD),
                      filled: true,
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black), 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPasswordController,
                    style: const TextStyle(color: Colors.grey), 
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFDDDDDD),
                      filled: true,
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(color: Colors.black), 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(const Color(0xFF2C8B2C)),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        onPressed: _submitForm,
                        child: const Text(
                          'Create Account',
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Center(
                    child: GestureDetector(
                      child: const Text(
                        "Already Have account? Log In",
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUppage()),
                        );
                      },
                    ),
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
