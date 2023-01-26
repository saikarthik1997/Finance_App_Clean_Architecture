import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/modules/home/controllers/home_page_controller.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: SafeArea(
          child: TabBar(
            controller: controller.tabController,
            unselectedLabelColor: Colors.grey,
            indicator: const BoxDecoration(
                border: Border(
              top: BorderSide(color: AppColors.primaryColor, width: 5.0),
            )),
            labelColor: AppColors.primaryColor,
            onTap: (index) {},
            tabs: const [
              Tab(icon: Icon(Icons.menu_rounded)),
              Tab(icon: Icon(Icons.piano)),
              Tab(icon: Icon(Icons.car_rental_rounded)),
              Tab(icon: Icon(Icons.settings_rounded)),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Text("Home Page"),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
