import 'package:flutter/material.dart';
import 'package:translator_linux/languagesList.dart';

class TranslateTo extends StatefulWidget {
  const TranslateTo({
    Key? key,
  }) : super(key: key);

  @override
  State<TranslateTo> createState() => _TranslateToState();
}

class _TranslateToState extends State<TranslateTo> {
  String dropdownValue = languageList[0];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Translate To"),
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
