part of 'news_bloc.dart';

@immutable
class NewsState {
  final EnumStatus status;
  final List<NewsEntity> list;
  final String message;

  const NewsState({
    this.status = EnumStatus.initial,
    this.list = const [],
    this.message = '',
  });

  NewsState copyWith({
    EnumStatus? status,
    List<NewsEntity>? list,
    String? message
  }) => NewsState(status: status ?? this.status, list: list ?? this.list, message: message ?? this.message);
}

enum EnumStatus { initial, loading, success, fail }
