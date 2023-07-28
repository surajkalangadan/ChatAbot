part of 'chatbloc_bloc.dart';

@immutable
abstract class ChatblocEvent {}
class FetchChat extends ChatblocEvent{
  final String message;
  FetchChat({required this.message});
}