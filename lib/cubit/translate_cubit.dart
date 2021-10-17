import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:translator/translator.dart';
import 'package:translator_linux/screens/home_screen.dart';

part 'translate_state.dart';

HomeScreen toTranslateText = HomeScreen();
var text = toTranslateText.translateController.text;
String translatedText = "";

class TranslateCubit extends Cubit<TranslateState> {
  TranslateCubit() : super(TranslateState(translateText: text));

  void translate() {
    final translator = GoogleTranslator();
    var translation = translator
        .translate(state.translateText, to: 'en')
        .then((value) => translatedText = value.toString());
    print(translation);
    emit(TranslateState(translateText: translatedText));
    // emit(TranslateState(translateText: "sda"));
  }
}
