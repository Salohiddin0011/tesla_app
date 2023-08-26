import 'package:flutter/material.dart';
import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import '../services/constants/app_strings.dart';
import '../views/colors_view.dart';

class ExteriorScreen extends StatefulWidget {
  final void Function() onTap;
  const ExteriorScreen({super.key, required this.onTap});

  @override
  State<ExteriorScreen> createState() => _ExteriorScreenState();
}

class _ExteriorScreenState extends State<ExteriorScreen>
    with AutomaticKeepAliveClientMixin {
  List<Color> color = [
    AppColors.black,
    AppColors.ff45525C,
    AppColors.ff044BB6,
    AppColors.e2e2e2,
    AppColors.d01000,
  ];
  List<String> tesla = [
    AppImages.blackTesla,
    AppImages.greishTesla,
    AppImages.blueTesla,
    AppImages.whiteTesla,
    AppImages.redTesla,
  ];
  int selectedIndex = 3;
  late PageController controller;
  @override
  void initState() {
    controller = PageController(initialPage: selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.f3f5f8,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                  child: Text(
                    AppStrings.selectColor,
                    style: TextStyle(
                      color: AppColors.a4b0bc,
                      fontSize: 20,
                      fontFamily: AppStrings.font,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 230,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      selectedIndex = value;
                      setState(() {});
                    },
                    controller: controller,
                    itemCount: tesla.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        tesla[index],
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.pearlWhiteMultiCoat,
                            style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppStrings.font,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            AppStrings.twoK,
                            style: TextStyle(
                              color: AppColors.d01000,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppStrings.font,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 5; i++)
                        ColorsView(
                          color: color[i],
                          index: i,
                          selectedIndex: selectedIndex,
                          onPressed: () {
                            selectedIndex = i;
                            controller.animateToPage(i,
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.easeIn);
                            setState(() {});
                          },
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                  color: AppColors.cfd3d9,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppStrings.font,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(AppStrings.wheelsCount),
                        SizedBox(height: 15),
                        Text(AppStrings.carbonFiber)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          AppStrings.fivetyFiveK,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: AppStrings.font,
                            color: AppColors.black,
                          ),
                        ),
                        InkWell(
                          onTap: widget.onTap,
                          child: Container(
                            alignment: Alignment.center,
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

  @override
  bool get wantKeepAlive => true;
}
