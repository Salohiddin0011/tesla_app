import 'package:flutter/material.dart';
import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';
import 'main_screen.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          const SizedBox(height: 75),
          Center(
            child: Image.asset(
              AppImages.tesla,
              width: 110,
              color: AppColors.white.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 60),
          const Text(
            AppStrings.tesla,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 30,
              fontFamily: AppStrings.font,
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.modelX,
                style: TextStyle(
                  color: AppColors.white.withOpacity(0.5),
                  fontSize: 26,
                  fontFamily: AppStrings.font,
                  overflow: TextOverflow.visible,
                ),
              ),
              const Text(
                AppStrings.modelY,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 38,
                  fontFamily: AppStrings.font,
                  overflow: TextOverflow.visible,
                ),
              ),
              Text(
                AppStrings.roadster,
                style: TextStyle(
                  color: AppColors.white.withOpacity(0.5),
                  fontSize: 26,
                  fontFamily: AppStrings.font,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          Image.asset(AppImages.startingTesla),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      AppStrings.rangeMile,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: AppColors.white,
                        fontFamily: AppStrings.font,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppStrings.range,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.white.withOpacity(0.7),
                        fontFamily: AppStrings.font,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    thickness: 1,
                    color: AppColors.white.withOpacity(.3),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      AppStrings.awd,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: AppColors.white,
                        fontFamily: AppStrings.font,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      AppStrings.motor,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.white.withOpacity(0.7),
                        fontFamily: AppStrings.font,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: AppColors.ff979797,
                fontSize: 16,
                fontFamily: AppStrings.font,
              ),
              children: [
                TextSpan(text: AppStrings.acceleration),
                TextSpan(
                  text: AppStrings.speed,
                  style: TextStyle(color: AppColors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: AppColors.ff979797,
                fontSize: 16,
                fontFamily: AppStrings.font,
              ),
              children: [
                TextSpan(text: AppStrings.highestSpeed),
                TextSpan(
                  text: AppStrings.upTo,
                  style: TextStyle(color: AppColors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, right: 55, top: 50),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(105),
                  border: Border.all(
                    color: AppColors.d01000,
                  ),
                ),
                child: const Text(
                  AppStrings.orderNow,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppStrings.font,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
