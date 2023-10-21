import 'package:flutter/material.dart';
import 'package:newclass/signup.dart';

class signinscreen extends StatelessWidget {
  signinscreen({super.key});

  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Log In",
              style: TextStyle(fontSize: 23, color: Colors.blue),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text("Email"),
              padding: EdgeInsets.only(right: 290),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email Address",
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("Password"),
              padding: EdgeInsets.only(right: 270),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailcontroller.text);
                  print(passwordcontroller.text);
                  emailcontroller.text = "";
                  passwordcontroller.text = "";
                },
                child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>signupscreen()));
            }, child: Text("don't have account? Sign up here"))
          ],
        ),
      ),
    );
  }
}
