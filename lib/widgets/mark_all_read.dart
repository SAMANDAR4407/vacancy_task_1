import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarkAllReadButton extends StatelessWidget {
  final Function() onTap;
  const MarkAllReadButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffe8e8e8),
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
            child: Text(
              'Mark all read',
              style: GoogleFonts.openSans().copyWith(fontSize: 14, fontWeight: FontWeight.w600),
            )),
      ),
    )
    ;
  }
}
