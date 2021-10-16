import 'package:flutter/material.dart';
import 'package:translator_linux/languagesList.dart';

class TranslateFrom extends StatefulWidget {
  const TranslateFrom({
    Key? key,
  }) : super(key: key);

  @override
  State<TranslateFrom> createState() => _TranslateFromState();
}

class _TranslateFromState extends State<TranslateFrom> {
  String dropdownValue = languageList[0];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Translate From"),
        SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              color: Colors.orange.shade900,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                underline: Container(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items:
                    languageList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
