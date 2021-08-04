import 'package:flutter/material.dart';
import 'package:translator_linux/Widgets/MenuItem.dart';
import 'package:translator_linux/Widgets/TranslateInOutArea.dart';
import 'package:translator_linux/constants.dart';
import 'package:translator_linux/model/MenuItem.dart';
import 'package:translator_linux/services/SendMail.dart';
import 'package:translator_linux/services/UrlLauncher.dart';
import 'package:yaru_icons/widgets/yaru_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Translator"),
        actions: [
          TranslateToBar(),
          SizedBox(width: 15),
          PopupMenuButton<MenuItem>(
              icon: Icon(YaruIcons.view_more),
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                    ...MenuItems.items.map(buildItem).toList(),
                  ]),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TranslateInOutArea(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Translate",
        onPressed: () {},
        child: Icon(YaruIcons.go_next),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
        value: item,
        child: Row(
          children: [
            Icon((item.icon)),
            SizedBox(width: 2),
            Text(item.text),
          ],
        ),
      );

  onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.info:
        showAboutDialog(
          context: context,
          applicationIcon: Image.asset(
            "assets/icons/Translate64Logo.png",
            fit: BoxFit.fill,
          ),
          applicationName: "Translator",
          applicationVersion: "0.1(Dev)",
          applicationLegalese: mitLicense,
          children: [
            TextButton(
              onPressed: () {
                launchUrl("https://github.com/Chandram-Dutta/translator_linux");
              },
              child: Text("Source Code @ GitHub"),
            ),
            TextButton(
                onPressed: () {
                  sendMail();
                },
                child: Text("Report Bug Or Request Feature")),
            TextButton(
              onPressed: () {
                launchUrl("https://linux-translator.web.app/");
              },
              child: Text("Run On Web"),
            )
          ],
        );

        break;
    }
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
  var _languages = ["English", "Hindi", "Chinese", "German"];
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
