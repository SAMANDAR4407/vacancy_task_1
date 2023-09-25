import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vacancy_task/core/database/entity/news_entity.dart';

class ListItem extends StatelessWidget {
  final Function() onTap;
  final NewsEntity entity;
  const ListItem({super.key, required this.onTap, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: entity.isOpened ? const Color(0xffe8e8e8) : Colors.white ,
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 90,
                  height: 65,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: CachedNetworkImage(imageUrl: entity.image, fit: BoxFit.cover, placeholder: (context, url) => Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUh66Phs0ZKCT_FNuieeq0F8dWEEvd7xxyRg&usqp=CAU', fit: BoxFit.cover,)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 200,child: Text(entity.title,maxLines: 2, style: GoogleFonts.openSans().copyWith(fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),)),
                    Text(entity.publishedDate, style: const TextStyle(color: CupertinoColors.systemGrey, fontSize: 12))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
