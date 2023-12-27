


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderAuthComponent extends StatelessWidget {
  const HeaderAuthComponent({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child: ClipPath(
            clipper: MyFirstClipper2(),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 60,
          top: 0,
          child: ClipPath(
            clipper: MyFirstClipper2(),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
            ),
          ),
        ),
        Positioned(
          right: 70,
          bottom: 30,
          child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
        Positioned(
        top: 30,
          left: 30,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white12,
              padding: const EdgeInsets.all(10)
            ),
            onPressed: () => Get.back(), 
            icon: const Icon(CupertinoIcons.chevron_back, color: Colors.white,)
          ),
        )
      ],
    );
  }
}

class MyFirstClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.quadraticBezierTo(size.width*0.0005556,size.height*0.7500000,0,size.height*0.9400000);
    path_0.cubicTo(size.width*0.4905556,size.height*1.2250000,size.width*0.6627778,size.height*0.1070000,size.width,size.height*0.9120000);
    path_0.quadraticBezierTo(size.width*1.0005556,size.height*0.7330000,size.width*1.0022222,0);
    return path_0;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

