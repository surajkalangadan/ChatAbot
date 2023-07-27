part of 'chatbloc_bloc.dart';

@immutable
abstract class ChatblocState {}

class ChatblocInitial extends ChatblocState {}
class ChatblocLoading extends ChatblocState {}
class ChatblocLoaded extends ChatblocState {}
class ChatblocError extends ChatblocState{}