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
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              border: InputBorder.none,
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
                  Divider(),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 5,
                color: Colors.black,
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
