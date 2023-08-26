import 'package:flutter/material.dart';

import '../services/constants/app_colors.dart';

// ignore: must_be_immutable
class ColorsView extends StatelessWidget {
  int index;
  int selectedIndex;
  final Color color;
  void Function() onPressed;

  ColorsView(
      {super.key,
      required this.color,
      required this.index,
      required this.selectedIndex,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 45,
        width: 45,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.white.withOpacity(.3),
              AppColors.white.withOpacity(.1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: selectedIndex == index
              ? Border.all(
                  width: 5,
                  color: index != 4 ? AppColors.cf1102 : AppColors.black)
              : null,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ColorsViewTwo extends StatelessWidget {
  int index;
  int selectedIndex;
  final Color color;
  void Function() onPressed;

  ColorsViewTwo(
      {super.key,
      required this.color,
      required this.index,
      required this.selectedIndex,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 15),
        clipBehavior: Clip.antiAlias,
        height: 45,
        width: 45,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.white.withOpacity(.3),
              AppColors.white.withOpacity(.1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: selectedIndex == index
              ? Border.all(width: 5, color: AppColors.cf1102)
              : null,
        ),
      ),
    );
  }
}
