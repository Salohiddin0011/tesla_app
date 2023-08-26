import 'package:flutter/material.dart';
import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';

class CarScreen extends StatefulWidget {
  final void Function() onTap;
  const CarScreen({super.key, required this.onTap});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.f3f5f8,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                  child: Text(
                    AppStrings.selectYourCar,
                    style: TextStyle(
                      color: AppColors.a4b0bc,
                      fontSize: 20,
                      fontFamily: AppStrings.font,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Image.asset(
                  AppImages.redTesla,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectedPrice = true;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.performance,
                              style: TextStyle(
                                color: selectedPrice
                                    ? AppColors.black
                                    : AppColors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w400,
                                fontFamily: AppStrings.font,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              AppStrings.fivetyFiveK,
                              style: TextStyle(
                                color: selectedPrice
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
                      GestureDetector(
                        onTap: () {
                          selectedPrice = false;
                          setState(() {});
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.longRange,
                              style: TextStyle(
                                color: selectedPrice == false
                                    ? AppColors.black
                                    : AppColors.black.withOpacity(0.2),
                                fontWeight: FontWeight.w400,
                                fontFamily: AppStrings.font,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              AppStrings.fortySixK,
                              style: TextStyle(
                                color: selectedPrice == false
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
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              AppStrings.seconds,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: AppColors.black,
                                fontFamily: AppStrings.font,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              AppStrings.zeroToSixty,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: AppColors.black.withOpacity(0.5),
                                fontFamily: AppStrings.font,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            thickness: 1,
                            color: AppColors.black.withOpacity(.3),
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              AppStrings.maxSpeed,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                color: AppColors.black,
                                fontFamily: AppStrings.font,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              AppStrings.topSpeed,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: AppColors.black.withOpacity(0.5),
                                fontFamily: AppStrings.font,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      AppStrings.teslaDescription,
                      style: TextStyle(
                          height: 1.2,
                          fontSize: 14,
                          color: AppColors.descriptionColor,
                          fontFamily: AppStrings.font),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedPrice
                              ? AppStrings.fivetyFiveK
                              : AppStrings.fortySixK,
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
                              border:
                                  Border.all(width: 1, color: AppColors.d01000),
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool selectedPrice = true;

bool value = false;
