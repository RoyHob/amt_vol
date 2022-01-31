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
        backgroundColor: Colors.grey,
        title: Text(widget.engineName),
      ),
    );
  }
}
