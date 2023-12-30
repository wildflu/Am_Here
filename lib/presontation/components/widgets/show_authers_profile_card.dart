

import 'package:amhere/presontation/components/widgets/location_activities_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAuthersProfileCard extends StatelessWidget {
  const ShowAuthersProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 350,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton.icon(
                          onPressed: (){
                          }, 
                          icon: const Icon(Icons.face_retouching_natural), 
                          label: const Text("Ask Friendship")
                        ),
                        OutlinedButton.icon(
                          onPressed: (){
                          }, 
                          icon: const Icon(CupertinoIcons.conversation_bubble), 
                          label: const Text("Start new chat")
                        ),
                      ],
                    ),
                    const Text("a litle bio or description it's nessisare for this section just to make the trust between the users", textAlign: TextAlign.center,),
                    const Text("Fivrets Activetes", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black54),),
                    const ActionLocationListView(),
                    const Text("Best Locations", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black54)),
                    const ActionLocationListView(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 5, color: Colors.white),
                ),
                child: const CircleAvatar(radius: 50, backgroundColor: Colors.blue,))),
          ),
        ],
      ),
    );
  }
}
