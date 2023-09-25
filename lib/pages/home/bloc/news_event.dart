part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class LoadData extends NewsEvent{}
class MarkAllRead extends NewsEvent{}
class UpdateNews extends NewsEvent {
  final NewsEntity newsEntity;
  UpdateNews({required this.newsEntity});
}
