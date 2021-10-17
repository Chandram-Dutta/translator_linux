import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:translator/translator.dart';
import 'package:translator_linux/screens/home_screen.dart';

part 'translate_state.dart';

HomeScreen toTranslateText = HomeScreen();
String text = toTranslateText.translateController.text;

class TranslateCubit extends Cubit<TranslateState> {
  TranslateCubit() : super(TranslateState(translateText: text));

  void translate() async {
    final translator = GoogleTranslator();
    var translation =
        await translator.translate(state.translateText.toString(), to: 'en');
    print(translation);
    emit(TranslateState(translateText: translation.toString()));
    // emit(TranslateState(translateText: "sda"));
  }
}
