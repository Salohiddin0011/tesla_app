import 'package:flutter/material.dart';

import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';
import 'summary_screen.dart';

class AutoPilot extends StatefulWidget {
  const AutoPilot({super.key});

  @override
  State<AutoPilot> createState() => _AutoPilotState();
}

class _AutoPilotState extends State<AutoPilot> {
  bool price = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.f3f5f8,
      body: Stack(
        children: [
          Container(
            height: 570,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  AppImages.autopilot,
                ),
              ),
            ),
          ),
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
                      AppStrings.autopilot,
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
                                AppStrings.fullSelfDriving,
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
                                AppStrings.fiveK,
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
                                AppStrings.autopilot,
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
                                AppStrings.threeK,
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
                    const SizedBox(height: 25),
                    const Text(
                      AppStrings.autopilotDes,
                      style: TextStyle(
                        height: 1.3,
                        color: AppColors.ff979797,
                        fontSize: 13,
                        fontFamily: AppStrings.font,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price ? AppStrings.sixTyK : AppStrings.fivetySevenK,
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: AppStrings.font,
                              color: AppColors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SummaryScreen(),
                                ),
                              );
                            },
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
                          ),
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

List<Color> color = [AppColors.f3f5f8, AppColors.black];
int selectedIndex = 0;
bool selectedPrice2 = true;
