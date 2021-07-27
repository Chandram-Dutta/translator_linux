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

class TranslateToBar extends StatelessWidget {
  const TranslateToBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Translate To"),
        SizedBox(width: 10),
        Placeholder(
          fallbackHeight: 20,
          fallbackWidth: 40,
        )
      ],
    );
  }
}
