
import 'package:url_launcher/url_launcher.dart';


void sendMail() async {
  const url = 'mailto:chandramdutta2004@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
