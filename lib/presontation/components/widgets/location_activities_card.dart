
import 'package:flutter/material.dart';

class ActionLocationListView extends StatelessWidget {
  const ActionLocationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: Colors.black12,
                  blurRadius: 5
                )
              ]
            ),
            child: Row(
              children: [
                const CircleAvatar(radius: 25,),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text("fiverte", style: Theme.of(context).textTheme.titleSmall,),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
