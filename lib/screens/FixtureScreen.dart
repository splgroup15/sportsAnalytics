import 'package:flutter/material.dart';
import 'package:sports_flutter_app/widgets/Dummy.dart';
import 'package:sports_flutter_app/widgets/Teams.dart';

import 'package:sports_flutter_app/widgets/WorldCup.dart';


class FixtureScreen extends StatelessWidget {
  const FixtureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Matches'),
                ),
                Tab(
                  child: Text('Teams'),
                ),
               /* Tab(
                  child: Text('Dummy'),
                ),*/
              ],
            ),
            preferredSize: Size.fromHeight(20.0),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 2000,
            child: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      WorldCup()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children: [
                      Teams()
                    ],
                  ),
                ),
              /*  Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0, bottom: 13.0, top: 25),
                  child: Column(
                    children:  [
                      teamDetails()
                    ],
                  ),
                ), */

                    ],
                  ),
                ),

            ),
          ),
        );
  }
}