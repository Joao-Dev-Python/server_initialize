import 'package:parse_server_sdk/parse_server_sdk.dart';
class InicialaizeServe{

  static InicialaizeServe instance = InicialaizeServe._server();
  InicialaizeServe._server();


  void initServer({String? appId,String? serverUrl,String? clientKey}) async{
    await Parse().initialize(appId!, serverUrl!, clientKey: clientKey);


  }



}