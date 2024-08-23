import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final String number;
  final String followerOrFollowing;
  const FollowButton({
    super.key ,
    required this.followerOrFollowing,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        color: Colors.grey[200],
        onPressed: () {},
        child: RichText(
            text: TextSpan(children: [
              TextSpan(
                //text: '${user.numberOfFollowers}  ',
                text: '${number}  ',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold, // First part style
                ),
              ),
               TextSpan(
                 //text:  'hello',
                text: '$followerOrFollowing',
                  style: const TextStyle(
                    color: Colors.grey, // First part style
                  ))
            ])));
  }
}
