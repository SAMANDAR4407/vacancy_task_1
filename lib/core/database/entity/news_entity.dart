
import 'package:floor/floor.dart';

@Entity(tableName: "news")
class NewsEntity{
  @PrimaryKey(autoGenerate: false)
  final String title;
  final String publishedDate;
  final String article;
  final String image;
  late final bool isOpened;

  NewsEntity({required this.title, required this.publishedDate, required this.article, required this.image, this.isOpened = false});

}