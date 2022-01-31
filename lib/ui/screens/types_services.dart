import 'package:flutter/material.dart';

class TypeService extends StatefulWidget {
  final String engineName;

  const TypeService({Key? key, required this.engineName}) : super(key: key);

  _TypeServiceState createState() => _TypeServiceState();
}

class _TypeServiceState extends State<TypeService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text("Back", style: TextStyle(fontSize: 15, color: Colors.grey)),
          ),
        ),
        backgroundColor: Colors.grey.withOpacity(0.2),
        titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        title: Text(widget.engineName),
      ),
    );
  }
}
