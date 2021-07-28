import 'package:flutter/material.dart';
import 'package:translator_linux/Widgets/TranslateActionBar.dart';
import 'package:translator_linux/Widgets/TranslateInOutArea.dart';
import 'package:yaru_icons/widgets/yaru_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Translator"),
        actions: [
          IconButton(
            tooltip: "More",
            onPressed: () {},
            icon: Icon(YaruIcons.view_more),
          )
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
                child: TranslateActionBar(),
              ),
              Divider(),
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
}
