import 'package:flutter/material.dart';

class TranslateInOutArea extends StatelessWidget {
  const TranslateInOutArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: (TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter to translate',
            ),
          ))),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.deepOrange,
                  width: 2,
                )),
            child: FittedBox(
              child: Text("Hi"),
            ),
          ))
        ],
      ),
    );
  }
}
