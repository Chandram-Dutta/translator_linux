import 'package:flutter/material.dart';
import 'package:translator_linux/widgets/translate_from.dart';
import 'package:translator_linux/widgets/translate_to.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: "Translate",
        child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("Translator"),
        actions: [
          TranslateTo(),
          SizedBox(
            width: 40,
            child: Icon(Icons.arrow_forward_sharp),
          ),
          TranslateFrom()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: TextField(
                  // keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Enter Text to Translate'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.orange.shade900,
                    width: 2,
                  ),
                ),

                // child: Text("),
              ),
            )
          ],
        ),
      ),
    );
  }
}
