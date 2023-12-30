


import 'package:amhere/presontation/components/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NavBar(),
      ],
    );
  }
}
