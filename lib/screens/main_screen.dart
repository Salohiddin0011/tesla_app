import 'package:flutter/material.dart';

import '../services/constants/app_colors.dart';
import '../services/constants/app_images.dart';
import 'autopilot_screen.dart';
import 'car_screen.dart';
import 'exterior_screen.dart';
import 'interior_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late final PageController controller;

  int selectedIndex = 0;
  int lastPage = 0;

  final buttons = [
    "1. Car",
    "2. Exterior",
    "3. Interior",
    "4. Autopilot",
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  void onTapTab(int i) {
    if (i <= lastPage) {
      selectedIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }

  void onPressButton(int i) {
    selectedIndex = i;
    lastPage = lastPage < i ? i : lastPage;
    setState(() {});
    controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.black.withOpacity(.4),
        ),
        title: Image.asset(
          AppImages.tesla,
          height: 17,
        ),
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                  TabBarButton(
                    onPressed: () => onTapTab(i),
                    text: buttons[i],
                    i: i,
                    selectedIndex: selectedIndex,
                    lastPage: lastPage,
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          CarScreen(onTap: () => onPressButton(1)),
          ExteriorScreen(onTap: () => onPressButton(2)),
          ThirdScreen(onTap: () => onPressButton(3)),
          const AutoPilot(),
        ],
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int selectedIndex;
  final int i;
  final String text;
  const TabBarButton(
      {Key? key,
      this.onPressed,
      required this.lastPage,
      required this.selectedIndex,
      required this.text,
      required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: (i <= lastPage)
                ? const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (selectedIndex == i) ? Colors.red : Colors.transparent,
          )
        ],
      ),
    );
  }
}
