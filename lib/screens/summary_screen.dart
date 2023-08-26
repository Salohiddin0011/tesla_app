import 'package:flutter/material.dart';

import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            AppImages.summaryTesla,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Image.asset(
              AppImages.tesla,
              color: AppColors.white,
              width: 110,
            ),
          ),
          Align(
            alignment: const Alignment(1, 1),
            child: Container(
              height: 320,
              decoration: const BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
                child: Column(
                  children: [
                    const Text(
                      AppStrings.summary,
                      style: TextStyle(
                        color: AppColors.a4b0bc,
                        fontSize: 20,
                        fontFamily: AppStrings.font,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      AppStrings.yourModelY,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppStrings.font),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      AppStrings.sixTyK,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppStrings.font),
                    ),
                    const SizedBox(height: 35),
                    Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.button,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
