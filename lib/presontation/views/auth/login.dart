
import 'package:amhere/presontation/components/header_auth_component.dart';
import 'package:amhere/presontation/components/text_filed_component.dart';
import 'package:amhere/presontation/views/auth/register.dart';
import 'package:amhere/presontation/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController paswordController = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
              height: 200,
              child: HeaderAuthComponent(title: 'Log in'),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFiledComponent(hintText: 'User name', prefixIcon: Icons.email_outlined, isSecure: false, controller: emailController),
                  const SizedBox(height: 10,),
                  TextFiledComponent(hintText: 'Email', prefixIcon: Icons.email_outlined, isSecure: false, controller: emailController),
                  const SizedBox(height: 10,),
                  TextFiledComponent(hintText: 'Pasword', prefixIcon: Icons.password, isSecure: true, controller: paswordController),
                  const SizedBox(height: 10,),
                  Text('Forgot passwords ?'),
                ],
              ),
            ),
            const SizedBox(height: 220,),
            Column(
              children: [
                Container(
                  width: 200,
                  child: ElevatedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.blue),
                      onPressed: ()=>Get.off(()=> const HomePage()),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                ),                
                TextButton(
                  onPressed: () => Get.to(()=> const RegisterPage()),
                child: const Text(
                  "I'm not a member yet",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),)
                    )
              ],
            )
        ],
      ),
    );
  }
}