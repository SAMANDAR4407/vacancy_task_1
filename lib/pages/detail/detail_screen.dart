// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vacancy_task/core/database/entity/news_entity.dart';


class DetailScreen extends StatefulWidget {
  NewsEntity model;

  DetailScreen({super.key,required this.model});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    backgroundColor: Colors.black,
                    scrolledUnderElevation: 0,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 18,),
                      tooltip: 'Back',
                    ),
                    expandedHeight: 260,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12),
                        background: CachedNetworkImage(
                          imageUrl: widget.model.image,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(color: Colors.black,),
                        ),
                      title: Text(widget.model.title,style: const TextStyle(fontSize: 12,color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.model.article.trim(),
                                style: const TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
