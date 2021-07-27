import 'package:flutter/material.dart';

class TranslateInOutArea extends StatelessWidget {
  const TranslateInOutArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          child: (TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter a search term'),
            maxLines: 20,
          )),
        )),
        Expanded(
            child: Container(
          color: Colors.red,
          child: FittedBox(
            child: Text("Hi"),
          ),
        ))
      ],
    );
  }
}
