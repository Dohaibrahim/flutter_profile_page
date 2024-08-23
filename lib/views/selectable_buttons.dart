import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/models/button_of_profile_model.dart';
import 'package:flutter_profile/views/show_collections_screen.dart';
import 'package:flutter_profile/views/show_shots_screen.dart';

class SelectableButtons extends StatefulWidget {
  final ButtonOfProfile buttonOfProfile;
  const SelectableButtons({super.key , required this.buttonOfProfile});

  @override
  State<SelectableButtons> createState() => _SelectableButtonsState();
}



class _SelectableButtonsState extends State<SelectableButtons> with SingleTickerProviderStateMixin {
  late TabController tabController;
  /*final List<String> tabTitles = ['${ widget.buttonOfProfile.number[0]} Shots'
   , '${widget.buttonOfProfile.number[1] } Collections'
  ];*/

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Padding(
            padding: EdgeInsets.all(5),
            child: TabBar(
              dragStartBehavior: DragStartBehavior.start,
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              labelColor: const Color(0xff787ae7),
              indicatorColor: Colors.transparent,
              indicatorWeight: 0,
              indicator: BoxDecoration(
                color: Color(0xfff1f1fd),

                borderRadius: BorderRadius.circular(5),
              ),
              controller: tabController,
              tabs: [
                Tab(
                  text: '${widget.buttonOfProfile.number[0] } Shots',
                ),
                Tab(
                  text: '${widget.buttonOfProfile.number[1] } Collections',
                ),
              ],
            )),
        Expanded(
          child: TabBarView(

            controller: tabController,
            children: const [
              ShowShotsScreen(),
              ShowCollectionsScreen(),
            ],
          ),),
      ],),

    );
  }
}




