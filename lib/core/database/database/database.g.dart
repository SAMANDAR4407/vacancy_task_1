// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  NewsDao? _newsDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `news` (`title` TEXT NOT NULL, `publishDate` TEXT NOT NULL, `content` TEXT NOT NULL, `image` TEXT NOT NULL, `isRead` INTEGER NOT NULL, PRIMARY KEY (`title`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  NewsDao get newsDao {
    return _newsDaoInstance ??= _$NewsDao(database, changeListener);
  }
}

class _$NewsDao extends NewsDao {
  _$NewsDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _newsEntityInsertionAdapter = InsertionAdapter(
            database,
            'news',
            (NewsEntity item) => <String, Object?>{
                  'title': item.title,
                  'publishDate': item.publishedDate,
                  'content': item.article,
                  'image': item.image,
                  'isRead': item.isOpened ? 1 : 0
                },
            changeListener),
        _newsEntityUpdateAdapter = UpdateAdapter(
            database,
            'news',
            ['title'],
            (NewsEntity item) => <String, Object?>{
                  'title': item.title,
                  'publishDate': item.publishedDate,
                  'content': item.article,
                  'image': item.image,
                  'isRead': item.isOpened ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<NewsEntity> _newsEntityInsertionAdapter;

  final UpdateAdapter<NewsEntity> _newsEntityUpdateAdapter;

  @override
  Future<List<NewsEntity>> getAllNews() async {
    return _queryAdapter.queryList('SELECT * FROM news ORDER BY title ASC',
        mapper: (Map<String, Object?> row) => NewsEntity(
            title: row['title'] as String,
            publishedDate: row['publishDate'] as String,
            article: row['content'] as String,
            image: row['image'] as String,
            isOpened: (row['isRead'] as int) != 0));
  }

  @override
  Stream<NewsEntity?> findNewsById(String title) {
    return _queryAdapter.queryStream('SELECT * FROM news WHERE title = ?1',
        mapper: (Map<String, Object?> row) => NewsEntity(
            title: row['title'] as String,
            publishedDate: row['publishDate'] as String,
            article: row['content'] as String,
            image: row['image'] as String,
            isOpened: (row['isRead'] as int) != 0),
        arguments: [title],
        queryableName: 'news',
        isView: false);
  }

  @override
  Stream<List<NewsEntity>> streamedData() {
    return _queryAdapter.queryListStream('SELECT * FROM news',
        mapper: (Map<String, Object?> row) => NewsEntity(
            title: row['title'] as String,
            publishedDate: row['publishDate'] as String,
            article: row['content'] as String,
            image: row['image'] as String,
            isOpened: (row['isRead'] as int) != 0),
        queryableName: 'news',
        isView: false);
  }

  @override
  Future<void> insertAllNews(List<NewsEntity> newsEntity) async {
    await _newsEntityInsertionAdapter.insertList(
        newsEntity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateNews(NewsEntity newsEntity) async {
    await _newsEntityUpdateAdapter.update(newsEntity, OnConflictStrategy.abort);
  }
}
