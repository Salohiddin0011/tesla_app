import 'package:flutter/material.dart';

import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';
import '../views/colors_view.dart';

class ThirdScreen extends StatefulWidget {
  final void Function() onTap;
  const ThirdScreen({super.key, required this.onTap});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<Color> color = [AppColors.f3f5f8, AppColors.black];
  int selectedIndex = -1;
  bool price = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.f3f5f8,
      body: Stack(
        children: [
          Image.asset(AppImages.salon),
          Align(
            alignment: const Alignment(4, 1),
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.selectInterior,
                      style: TextStyle(
                        color: AppColors.a4b0bc,
                        fontSize: 20,
                        fontFamily: AppStrings.font,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            price = true;
                            setState(() {});
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.blackAndWhite,
                                style: TextStyle(
                                  color: price
                                      ? AppColors.black
                                      : AppColors.black.withOpacity(0.2),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.font,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                AppStrings.oneK,
                                style: TextStyle(
                                  color: price
                                      ? AppColors.d01000
                                      : AppColors.black.withOpacity(.2),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.font,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            price = false;
                            setState(() {});
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.allBlack,
                                style: TextStyle(
                                  color: price == false
                                      ? AppColors.black
                                      : AppColors.black.withOpacity(0.2),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.font,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                AppStrings.included,
                                style: TextStyle(
                                  color: price == false
                                      ? AppColors.d01000
                                      : AppColors.black.withOpacity(.2),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppStrings.font,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 2; i++)
                          ColorsViewTwo(
                              color: color[i],
                              index: i,
                              selectedIndex: selectedIndex,
                              onPressed: () {
                                selectedIndex = i;
                                setState(() {});
                              }),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price
                                ? AppStrings.fivetyEightK
                                : AppStrings.fivetySevenK,
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: AppStrings.font,
                              color: AppColors.black,
                            ),
                          ),
                          InkWell(
                            onTap: widget.onTap,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 1, color: AppColors.d01000),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 12),
                                child: Text(
                                  AppStrings.next,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppStrings.font,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
