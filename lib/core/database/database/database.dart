
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import '../dao/news_dao.dart';
import '../entity/news_entity.dart';
part 'database.g.dart';

@Database(version: 1, entities: [NewsEntity])
abstract class AppDatabase extends FloorDatabase {
  NewsDao get newsDao;
}