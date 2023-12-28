

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex:1 ,child: Image.asset('assets/placeholder_image.png', width: 40, height: 40, alignment: Alignment.topLeft,)),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12,
                      contentPadding: const EdgeInsets.only(top: 12, left: 20),
                      prefixIcon: const Icon(Icons.search)
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Expanded(child: Text("Am Here", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)),
              Stack(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none, size: 25,)),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: Container(width: 8, height: 8,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red),)),
                ]
              ),
              Stack(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.message_outlined, size: 23,)),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: Container(width: 8, height: 8,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red),)),
                ]
              ),
            ],
          )
        ],
      ),
    ).animate().fade();
  }
}