
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacancy_task/widgets/carousel.dart';
import 'package:vacancy_task/widgets/list_item.dart';
import 'package:vacancy_task/widgets/mark_all_read.dart';

import '../../core/database/dao/news_dao.dart';
import '../../core/database/database/database.dart';
import '../../util/news_list.dart';
import '../../util/setup.dart';
import '../detail/detail_screen.dart';
import 'bloc/news_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _dao = getIt<AppDatabase>().newsDao;
  late NewsBloc bloc;

  @override
  void initState() {
    bloc = NewsBloc(_dao);
    load();
    bloc.add(LoadData());
    super.initState();
  }

  void load() async {
    if((await _dao.getAllNews()).isEmpty || (await _dao.getAllNews()).length != MockList.instance.list.length){
      _dao.insertAllNews(MockList.instance.list);
    }
  }

  Future<NewsDao> _callDao() async {
    return _dao;
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.status == EnumStatus.loading) {
          return const Center(child: CupertinoActivityIndicator(radius: 20));
        }
        return Scaffold(
          backgroundColor: const Color(0xffe8e8e8),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            scrolledUnderElevation: 0,
            title: Text('Notification', style: GoogleFonts.openSans().copyWith(fontSize: 19, fontWeight: FontWeight.w700)),
            centerTitle: true,
            actions: [
              MarkAllReadButton(onTap: (){
                setState(() {
                  bloc.add(MarkAllRead());
                });
              })
            ],
          ),
          body: FutureBuilder(
            future: _callDao(),
            builder: (context, snapshot) {
              if (!snapshot.hasData || snapshot.connectionState == ConnectionState.none) {
                return const Center(child: CupertinoActivityIndicator(radius: 20));
              }
              return StreamBuilder<Object>(
                stream: snapshot.data!.streamedData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData || snapshot.connectionState == ConnectionState.none) {
                    return const Center(child: CupertinoActivityIndicator(radius: 20,));
                  }
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Featured',
                            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                          ),
                        ),
                        CarouselWidget(list: state.list),
                        const SizedBox(height: 5),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Latest news',
                            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                          ),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(bottom: 15),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.list.length,
                            separatorBuilder: (context, index) => const SizedBox(height: 15),
                            itemBuilder: (context, index) {
                              final entity = state.list[index];
                              return ListItem(onTap: (){
                                bloc.add(UpdateNews(newsEntity: entity));
                                Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailScreen(model: entity)));
                              }, entity: entity);
                            }
                        ),
                      ],
                    ),
                  );
                }
              );
            },
          ),
        );
      },
    );
  }
}
