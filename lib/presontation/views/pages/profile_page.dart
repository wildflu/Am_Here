




import 'package:amhere/presontation/components/auth_components/text_filed_component.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/one.jpg", width: 150,height: 150, fit: BoxFit.cover,)),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.blueAccent
                          ),
                          onPressed: (){}, icon: const Icon(Icons.edit, color: Colors.white,)))
                  ],
                ),
              ),
            ],
          ),
          TextFiledComponent(hintText: "Full Name", prefixIcon: Icons.email_outlined, isSecure: false, controller: email),
          TextFiledComponent(hintText: "Email", prefixIcon: Icons.email_outlined, isSecure: false, controller: email),
          TextFiledComponent(hintText: "Email", prefixIcon: Icons.email_outlined, isSecure: false, controller: email),
          TextFiledComponent(hintText: "Email", prefixIcon: Icons.email_outlined, isSecure: false, controller: email),
          TextFiledComponent(hintText: "Email", prefixIcon: Icons.email_outlined, isSecure: false, controller: email),
          TextFiledComponent(hintText: "Email", prefixIcon: Icons.email_outlined, isSecure: false, controller: email)
        ],
      ),
    );
  }
}