import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_profile/models/button_of_profile_model.dart';
import 'package:flutter_profile/views/selectable_buttons.dart';
import 'package:flutter_profile/views/show_shots_screen.dart';
import 'package:flutter_profile/widgets/follow_button.dart';

import '../models/user.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    SelectableButtons selectableButtons;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: Text(
          "@${user.nameID}",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Circular border
                ),
              ),
              child: Text("follow"),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage('${user.image}', scale: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${user.name}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "${user.bio}",
              style: TextStyle(fontSize: 20, color: Colors.grey[600]),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FollowButton(
                      followerOrFollowing: "Follower",
                      number: '${user.numberOfFollowers}'),
                  const SizedBox(
                    width: 3,
                  ),
                  FollowButton(
                      followerOrFollowing: "Following",
                      number: '${user.numberOfFollowing}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/internet.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const SizedBox(width: 9), // Space between the icon and dot
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.purple, // Customize dot color
                  ),
                  const SizedBox(width: 9),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/video.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.purple, // Customize dot color
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/social-media.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
             const Expanded(
                child: Row(
                  children: [
                    SelectableButtons(
                      buttonOfProfile: ButtonOfProfile(number: [200, 100]),
                    ),
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
