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
    "DD15 SN37836"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          child: ListView.builder(
            itemCount: engineList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(engineList[index]),
                  Spacer(),
                  Icon(Icons.arrow_right),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
