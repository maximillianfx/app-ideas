import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConverterScreen extends StatefulWidget {

  ConverterScreen({Key key, this.titleApp}) : super(key: key);

  final String titleApp;

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {

  final TextEditingController _controller = TextEditingController();
  String saidaTxt= "";

  void setValueConverter(String value) {
    int size = value.length;
    int saida = 0;
    if (size > 0) {
      for (int j = 0, i = size - 1; j < size; j++, i--) {
        if (int.parse(value[j]) == 1)
          saida += pow(2, i);
      }
    }

    setState(() {
      saidaTxt = saida.toString();
    });
  }

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
      body: Column(
        children:[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              maxLength: 8,
              maxLines: 1,
              inputFormatters: [new FilteringTextInputFormatter.allow(RegExp("[0-1]"),)],
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              onChanged: (v){
                setValueConverter(v);
              },
            ),
          ),
          Container(
            child: Expanded(
              child: Center(
                child: Text(
                  saidaTxt,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
