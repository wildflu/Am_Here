

import 'package:flutter/material.dart';

class EmptyListComponent extends StatelessWidget {
  const EmptyListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/one.jpg', width: MediaQuery.of(context).size.width - 110, height: 200,),
          const SizedBox(height: 30,),
          const Text("This section is empty", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black54),),
          const Text("you don't have any thing here for now", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black45),),
        ],
      ),
    );
  }
}