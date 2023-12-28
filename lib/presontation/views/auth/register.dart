import 'package:amhere/data/user.dart';
import 'package:amhere/domain/get_controller/auth_controller/auth_controller.dart';
import 'package:amhere/presontation/components/auth_components/header_auth_component.dart';
import 'package:amhere/presontation/components/auth_components/text_filed_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    final List<String> genderOptions = ['Male', 'Female'];
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController fullnamecontroller = TextEditingController();
    TextEditingController countrycontroller = TextEditingController();
    TextEditingController citycontroller = TextEditingController();
    TextEditingController agecontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 200,
              child: HeaderAuthComponent(title: 'Register'),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFiledComponent(
                            hintText: 'Full name',
                            prefixIcon: Icons.email_outlined,
                            isSecure: false,
                            controller: fullnamecontroller),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFiledComponent(
                            hintText: 'Email',
                            prefixIcon: Icons.email_outlined,
                            isSecure: false,
                            controller: emailcontroller),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFiledComponent(
                            hintText: 'Password',
                            prefixIcon: Icons.email_outlined,
                            isSecure: true,
                            controller: passwordcontroller),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextFiledComponent(
                              hintText: 'Country',
                              prefixIcon: Icons.email_outlined,
                              isSecure: false,
                              controller: countrycontroller,
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: TextFiledComponent(
                              hintText: 'City',
                              prefixIcon: Icons.email_outlined,
                              isSecure: false,
                              controller: citycontroller,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextFiledComponent(
                              hintText: 'Age',
                              prefixIcon: Icons.email_outlined,
                              isSecure: false,
                              controller: agecontroller,
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    DropdownButton(
                                      padding: const EdgeInsets.only(left: 10),
                                      borderRadius: BorderRadius.circular(10),
                                      value: genderOptions.first,
                                      underline: Container(
                                        height: 0,
                                      ),
                                      iconSize: 0,
                                      onChanged: (String? newValue) {},
                                      items: genderOptions.map((String gender) {
                                        return DropdownMenuItem<String>(
                                          value: gender,
                                          child: Text(
                                            gender,
                                            style:
                                                const TextStyle(color: Colors.grey),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton.icon(
                      icon: const Icon(
                        Icons.g_mobiledata_outlined,
                        color: Colors.grey,
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 108, vertical: 15),
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Sign Up with Google",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                      onPressed: () async{
                        formKey.currentState!.validate();
                        
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                TextButton(
                  onPressed: () => Get.to(()=> const RegisterPage()),
                child: const Text(
                  "I'm Already a member",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
