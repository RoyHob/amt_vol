import 'package:flutter/material.dart';

class EngineSearch extends StatefulWidget {
  _EngineSearchState createState() => _EngineSearchState();
}

class _EngineSearchState extends State<EngineSearch> {
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
        body: ListView.builder(
      itemCount: engineList.length,
      itemBuilder: (context, index) {
        return Center(
          child: Row(
            children: [
              Text(engineList[index]),
              Spacer(),
              Icon(Icons.arrow_right),
            ],
          ),
        );
      },
    ));
  }
}
