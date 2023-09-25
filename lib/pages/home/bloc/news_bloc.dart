
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vacancy_task/core/database/entity/news_entity.dart';

import '../../../core/database/dao/news_dao.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsDao _dao;
  NewsBloc(this._dao) : super(const NewsState()) {
    on<NewsEvent>((event, emit) async {
      switch(event){
        case LoadData():
          await _onLoadData(event, emit);
        case MarkAllRead():
          await _onMarkAllRead(event, emit);
        case UpdateNews():
          await _onUpdateNews(event, emit, event.newsEntity);
      }
    });
  }

  Future<void> _onLoadData(LoadData event, Emitter<NewsState> emit) async {
    if(state.status == EnumStatus.loading) return;
    emit(state.copyWith(status: EnumStatus.loading));
    try{
      var list = await _dao.getAllNews();
      emit(state.copyWith(list: list, status: EnumStatus.success));
    } catch(e) {
      emit(state.copyWith(message: '$e', status: EnumStatus.fail));
    }
  }

  Future<void> _onMarkAllRead(MarkAllRead event, Emitter<NewsState> emit) async {
    for(var entity in await _dao.getAllNews()){
      if(!entity.isOpened){
        _dao.updateNews(NewsEntity(title: entity.title, publishedDate: entity.publishedDate, article: entity.article, image: entity.image, isOpened: true));
      }
    }
    try{
      emit(state.copyWith(status: EnumStatus.success, list: await _dao.getAllNews()));
    }catch(e){
      emit(state.copyWith(status: EnumStatus.fail, message: '$e'));
    }
  }

  Future<void> _onUpdateNews(UpdateNews event, Emitter<NewsState> emit, NewsEntity entity) async {
    _dao.updateNews(NewsEntity(title: entity.title, publishedDate: entity.publishedDate, article: entity.article, image: entity.image, isOpened: true));
    try{
      emit(state.copyWith(status: EnumStatus.success, list: await _dao.getAllNews()));
    }catch(e){
      emit(state.copyWith(status: EnumStatus.fail, message: '$e'));
    }
  }
}
