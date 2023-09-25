import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vacancy_task/core/database/entity/news_entity.dart';

import '../pages/detail/detail_screen.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key, required this.list});
  final List<NewsEntity> list;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 250, autoPlay: true, enlargeCenterPage: true, viewportFraction: 1,autoPlayInterval: const Duration(seconds: 5)),
      items: list.map((e) {
        return InkWell(
          onTap: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailScreen(model: e,)));
          },
          child: Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: CachedNetworkImage(imageUrl: e.image, fit: BoxFit.fitHeight, placeholder: (context, url) => Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUh66Phs0ZKCT_FNuieeq0F8dWEEvd7xxyRg&usqp=CAU', fit: BoxFit.cover)),
                ),
                Container(
                  color: Colors.black45,
                ),
                Positioned(
                  bottom: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: SizedBox(width: 300,child: Text(e.title, maxLines: 2, style: const TextStyle(overflow: TextOverflow.ellipsis,color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)),
                    ))
              ]
            ),
          ),
        );
      }).toList(),
    );
  }
}
