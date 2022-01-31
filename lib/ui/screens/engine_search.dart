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
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 0),
          child: Container(
            height: 25,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
            ),
            child: TextField(
              onChanged: (value) {
                engineList = engineList.where((element) => element.contains(value)).toList();
              },
              controller: searchController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Search...",
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
