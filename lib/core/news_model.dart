class NewsModel{

  final String title;
  final String publishedDate;
  final String article;
  final String image;
  late final bool isOpened;

  NewsModel({required this.title, required this.publishedDate, required this.article, required this.image, this.isOpened = false});

}