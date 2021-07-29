import 'package:flutter/material.dart';

class TranslateInOutArea extends StatefulWidget {
  const TranslateInOutArea({
    Key? key,
  }) : super(key: key);

  @override
  _TranslateInOutAreaState createState() => _TranslateInOutAreaState();
}

class _TranslateInOutAreaState extends State<TranslateInOutArea> {
  String translated = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: MediaQuery.of(context).size.height - 90,
                child: (TextField(
                  maxLines: 200,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter to translate',
                  ),
                )),
              ),
            ),
          )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 2,
                    )),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 92,
                    child: Text(translated),
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
