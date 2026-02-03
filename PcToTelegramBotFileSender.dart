import 'package:http/http.dart' as http;

void main() async {
  var tbottoken = "Telegram_bot_token";
  var tchatid = "Telegram_Chat_id";
  var tergatefile = "J:\\PDF\\Islamic\\quantum_method.PDF";
  var tlink = "https://api.telegram.org/bot$tbottoken/sendDocument";

  var url = Uri.parse(tlink);
  var request = http.MultipartRequest('POST', url);
  request.fields['chat_id'] = tchatid;
  request.files.add(await http.MultipartFile.fromPath('document', tergatefile));
  var response = await request.send();
  print(response.statusCode);
}
