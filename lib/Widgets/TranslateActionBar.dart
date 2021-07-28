import 'package:flutter/material.dart';

class TranslateActionBar extends StatelessWidget {
  const TranslateActionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TranslateFromBar(),
        TranslateToBar(),
      ],
    );
  }
}

class TranslateFromBar extends StatelessWidget {
  const TranslateFromBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Translate From"),
        SizedBox(width: 10),
        Placeholder(
          fallbackHeight: 20,
          fallbackWidth: 40,
        )
      ],
    );
  }
}

class TranslateToBar extends StatefulWidget {
  const TranslateToBar({
    Key? key,
  }) : super(key: key);

  @override
  _TranslateToBarState createState() => _TranslateToBarState();
}

class _TranslateToBarState extends State<TranslateToBar> {
  var _languages = ["English", "Hindi", "Chinese"];
  var _currentItem = "English";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Translate To"),
        SizedBox(width: 10),
        DecoratedBox(
          decoration: ShapeDecoration(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.0,
                  style: BorderStyle.solid,
                  color: Colors.deepOrange),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: DropdownButton<String>(
              items: _languages.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (var newValue) {
                setState(() {
                  this._currentItem = newValue.toString();
                });
              },
              value: _currentItem,
              underline: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
