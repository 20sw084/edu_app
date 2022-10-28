import 'package:edu_app/View/FourthScreen.dart';
import 'package:edu_app/View/SignUpPage.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/images/graduation.png",
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 50, // <-- SEE HERE
            ),
            Text(
              'Login Now',
              style: SignInTextStyle.textStyle,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Please Enter the details below to continue.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                obscureText: _obscureText,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _obscureText = !_obscureText;
                        },
                      );
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
              ),
            ),
            const SizedBox(
              height: 80, // <-- SEE HERE
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Row(
                children: const <Widget>[
                  Spacer(flex: 2),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20, // <-- SEE HERE
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text == 'junaid@gmail.com' &&
                      passwordController.text == 'junaid') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FourthScreen(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text("Invalid Email or Password"),
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.orange,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30, // <-- SEE HERE
            ),
            Center(
              child: GestureDetector(
                child: const Text(
                  'Dont have an account. Let\'s SignUp!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInTextStyle {
  static TextStyle textStyle = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
}
