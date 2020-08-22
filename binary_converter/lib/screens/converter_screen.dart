import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {

  ConverterScreen({Key key, this.titleApp}) : super(key: key);

  final String titleApp;

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text(widget.titleApp),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
