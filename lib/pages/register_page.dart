import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie/components/my_button.dart';
import 'package:foodie/components/my_textfield.dart';
import 'package:foodie/pages/home_page.dart';
// import 'package:foodie/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  //register method

//   void register() async {
//     // ignore: no_leading_underscores_for_local_identifiers
//     final _authService = AuthService();
//     if (passwordController.text == confirmPasswordController.text) {
//       // try creating user
//       try {
//         await _authService.signUpWithEmailPassword(
//           emailController.text,
//           passwordController.text,
//         );
//       } catch (e) {
//         showDialog(
//           // ignore: use_build_context_synchronously
//           context: context,
//           builder: (context) => AlertDialog(
//             title: Text(e.toString()),
//           ),
//         );
//       }
//     }
// // if password do not match show error
//     else {
//       showDialog(
//         context: context,
//         builder: (context) => const AlertDialog(
//           title: Text("Password don't match!"),
//         ),
//       );
//     }
//   }

  void register() async {
    if ((emailController.text != "" &&
            // ignore: unrelated_type_equality_checks
            passwordController.text != "" &&
            confirmPasswordController.text != "") &&
        (passwordController.text == confirmPasswordController.text)) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 20.0),
            ),
            // ignore: use_build_context_synchronously
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        );
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              content: const Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              content: const Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0),
              )));
        } else if (e.code == 'invalid-email') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              content: const Text(
                "Invalid Email Address",
                style: TextStyle(fontSize: 18.0),
              )));
        }
        print(e.code);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            "Something wrong..",
            style: TextStyle(fontSize: 20.0),
          ),
          // ignore: use_build_context_synchronously
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Lets create an acoount for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Sign Up",
            onTap: () {
              register();
            },
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
