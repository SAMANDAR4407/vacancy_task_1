
import 'package:get_it/get_it.dart';

import '../core/database/database/database.dart';

GetIt getIt = GetIt.instance;

Future<void> setUpDatabase() async {
  final database = await $FloorAppDatabase.databaseBuilder('news_database.db').build();

  getIt.registerLazySingleton<AppDatabase>(() => database);

}