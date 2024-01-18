




import 'package:amhere/presontation/components/widgets/location_activities_card.dart';
import 'package:amhere/presontation/components/widgets/notifier_dot.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/one.jpg", width: 100,height: 100, fit: BoxFit.cover,)
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: (){}, child: const Text("Log Out")),
                  ),
                  SizedBox(width:150,child: ElevatedButton(onPressed: (){}, child: const Text("Edit Profile"))),
                  SizedBox(width: 150, child: ElevatedButton(onPressed: (){}, child: const Text("Find copany"))),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Text("My Friends", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontStyle: FontStyle.italic),),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const MyFriendCard();
              },
            ),
          ),
          const SizedBox(height: 20,),
          Text("best activities", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontStyle: FontStyle.italic),),
          const SizedBox(height: 5,),
          const SizedBox(
            height: 60,
            child: ActionLocationListView(),
          ),
          const SizedBox(height: 20,),
          Text("Location", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontStyle: FontStyle.italic),),
          const SizedBox(height: 20,),
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: Theme.of(context).shadowColor,
                  blurRadius: 5
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}

class MyFriendCard extends StatelessWidget {
  const MyFriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/one.jpg', width: 60,height: 60,fit: BoxFit.cover,),
              ),
              const Positioned(
                top: 10,
                right: 0,
                child: NotifierContainerComponent(color:Colors.green,)),
            ]
          ),
          Text('Jalal', style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}