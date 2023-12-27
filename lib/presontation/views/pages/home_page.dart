

import 'package:amhere/presontation/components/widgets/buttom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home").animate().fade(delay: const Duration(microseconds: 900)).scale(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.person))
        ],
      ),
      body: const Stack(
        children: [
          ButtomBar()
        ],
      ),
    );
  }
}
