import 'dart:convert';


import 'package:http/http.dart';

import '../modelclass/Chatabot.dart';
import 'api_client.dart';





class ChatApi {
  ApiClient apiClient = ApiClient();


  Future<Chatabot> getChatbot() async {
    String trendingpath = 'https://ai-chatbot.p.rapidapi.com/chat/free?message=What\'s your name?&uid=user1';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Chatabot.fromJson(jsonDecode(response.body));
  }
}