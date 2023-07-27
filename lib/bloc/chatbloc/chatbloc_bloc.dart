import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../repositary/api/api_client.dart';
import '../../repositary/api/chat-bot-api.dart';
import '../../repositary/modelclass/Chatabot.dart';

part 'chatbloc_event.dart';
part 'chatbloc_state.dart';

class ChatblocBloc extends Bloc<ChatblocEvent, ChatblocState> {
  late Chatabot chatabot;
  ChatApi chatApi=ChatApi();
  ChatblocBloc() : super(ChatblocInitial()) {
    on<FetchChat>((event, emit) async{
      emit(ChatblocLoading());
      try{

        chatabot = await chatApi.getChatbot();
        emit(ChatblocLoaded());
      } catch(e){
        print(e);
        emit(ChatblocError());}
    }
    );
  }
}
