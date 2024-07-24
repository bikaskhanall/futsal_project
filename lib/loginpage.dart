import 'package:flutter/material.dart';
import 'package:project_futsal/signuppage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/loginpageimage.jpg', 
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 150),
              child: Image.asset("assets/images/profile.png", height: 150),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 350, right: 40), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Sign In",
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.green),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Center(
                    child: GestureDetector(child: const Text("Dont have an account? Sign Up",style: TextStyle(fontSize: 18,color: Colors.green)),
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUppage(),));
                    
                    },),
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
