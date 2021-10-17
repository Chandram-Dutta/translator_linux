import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:translator_linux/cubit/translate_cubit.dart';
import 'package:translator_linux/widgets/translate_to.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextEditingController translateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TranslateCubit(),
      child: BlocBuilder<TranslateCubit, TranslateState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(
              tooltip: "Translate",
              child: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
                print(translateController.text);
                BlocProvider.of<TranslateCubit>(context).translate();
              },
            ),
            appBar: AppBar(
              title: Text("Translator"),
              actions: [
                TranslateTo(),
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
                        controller: translateController,
                        // keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
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
                      child: Text(state.translateText),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
