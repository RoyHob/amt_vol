import 'package:flutter/material.dart';

class EngineSearch extends StatefulWidget {
  _EngineSearchState createState() => _EngineSearchState();
}

class _EngineSearchState extends State<EngineSearch> {
  final searchController = TextEditingController();

  List<String> engineList = [
    "EC290BLC SN22345",
    "L180E SN21707",
    "EC300DL SN2223",
    "A35D SN48766",
    "DD15 SN37836",
    "EC290BLC SN22345",
    "L180E SN21707",
    "EC300DL SN2223",
    "A35D SN48766",
    "DD15 SN37836",
    "EC290BLC SN22345",
    "L180E SN21707",
    "EC300DL SN2223",
    "A35D SN48766",
    "DD15 SN37836",
    "EC290BLC SN22345",
    "L180E SN21707",
    "EC300DL SN2223",
    "A35D SN48766",
    "DD15 SN37836",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(height: 100, width: 150, child: Image.asset("lib/assets/amtrac.png")),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Expanded(
          child: ListView.separated(
            itemCount: engineList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(engineList[index]),
                    trailing: Icon(Icons.arrow_right),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                height: 5,
                color: Colors.grey,
              );
            },
          ),
        )
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: engineList.length,
        //     itemBuilder: (context, index) {
        //       return Row(
        //         children: [
        //           Expanded(
        //             child: ListTile(
        //               title: Text(engineList[index]),
        //               trailing: Icon(Icons.arrow_right),
        //             ),
        //           ),
        //         ],
        //       );
        //     },
        //   ),
        // ),
      ],
    ));
  }
}
