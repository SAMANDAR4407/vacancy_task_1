

import 'package:floor/floor.dart';

import '../entity/news_entity.dart';

@dao
abstract class NewsDao {

  @Query('SELECT * FROM news ORDER BY title ASC')
  Future<List<NewsEntity>> getAllNews();

  @Query('SELECT * FROM news WHERE title = :title')
  Stream<NewsEntity?> findNewsById(String title);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAllNews(List<NewsEntity> newsEntity);

  @update
  Future<void> updateNews(NewsEntity newsEntity);

  @Query('SELECT * FROM news')
  Stream<List<NewsEntity>> streamedData();

}