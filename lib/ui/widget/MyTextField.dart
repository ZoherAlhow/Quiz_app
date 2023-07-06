import 'package:flutter/material.dart';

class MyTextFieled extends StatelessWidget {
  MyTextFieled({Key? key, required this.text, required this.textEditingCtrl})
      : super(key: key);
  final String text;
  var textEditingCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 340,
        child: TextFormField(
          style: TextStyle(color: Color(0xFF4F4F4F),overflow: TextOverflow.ellipsis),
          controller: textEditingCtrl,
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
              hintText: text,
              hintStyle: TextStyle(color: Color(0xFF4F4F4F)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))),
        ));
  }
}
