import 'package:flutter/material.dart';
import 'package:sports_flutter_app/widgets/Dummy.dart';
class Teams extends StatelessWidget {
  String teamIN = 'IND';
  String teamPK = 'PAK';
  String teamAS = 'AUS';
  String teamBA = 'BAN';
  String teamEN = 'ENG';
  String teamIR = 'IRE';
  String teamNE = 'NEZ';
  String teamSA = 'SAF';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "World Cup Teams",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.amber,
                size: 22,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => teamDetails(teamID: teamIN)),);
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'India',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                            "assets/images/india.png",
                            height: 38,
                            width: 38
                        ),
                      ),
                      // Text(
                      //   "203/6",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 17,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 26,
                  color: Colors.white60,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamPK)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'Pakistan',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                            "assets/images/pakistan.png",
                            height: 45,
                            width: 45
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamAS)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'Australia',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/australia.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamBA)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'Bangladesh',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/bangladesh.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamEN)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'England',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/england.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamIR)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'Ireland',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/ireland.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamNE)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'Newzealand',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/newzealand.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => teamDetails(teamID: teamSA)),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black, // Text Color
                        ),
                        child: const Text(
                          'South Africa',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5, ),
                        child: Image.asset(
                          "assets/images/southafrica.png",
                          height: 38,
                          width: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}