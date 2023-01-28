import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/values/app_images.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/modules/home/controllers/home_page_controller.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        drawer: const Drawer(),
        appBar: AppBar(
          actions: const [
            Icon(Icons.notifications_outlined),
            SizedBox(width: 20.0)
          ],
          title: const Text("Hello Jeremy"),
          centerTitle: false,
          titleTextStyle: const TextStyle(color: Colors.black),
          iconTheme: const IconThemeData(color: AppColors.primaryColor),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        bottomNavigationBar: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 2,
                child: Container(
                  height: 1.0,
                  width: Get.width,
                  color: Colors.grey,
                ),
              ),
              TabBar(
                labelPadding: const EdgeInsets.only(top: 8.0),
                controller: controller.tabController,
                unselectedLabelColor: Colors.grey,
                indicator: const BoxDecoration(
                    border: Border(
                  top: BorderSide(color: AppColors.primaryColor, width: 5.0),
                )),
                labelColor: AppColors.primaryColor,
                onTap: (index) {},
                tabs: const [
                  Tab(
                    icon: Icon(Icons.menu_rounded),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.piano),
                    text: "Investment",
                  ),
                  Tab(
                    icon: Icon(Icons.car_rental_rounded),
                    text: "Payment",
                  ),
                  Tab(
                    icon: Icon(Icons.settings_rounded),
                    text: "Credit",
                  ),
                  Tab(
                    icon: Icon(Icons.settings_rounded),
                    text: "Profile",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.0,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 24.0);
                  },
                  padding: const EdgeInsets.only(left: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 40.0,
                            ),
                            Text("Wallet"),
                            const SizedBox(height: 16.0),
                            Text("234\$"),
                            const SizedBox(
                              height: 40.0,
                            ),
                            SizedBox(
                              width: 150.0,
                              child: PrimaryButton(
                                  buttonText: "Withdraw Funds", onTap: () {}),
                            )
                          ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage(AppImages.loanBgImage),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: 300.0,
                    );
                  },
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 16.0),
                          const Text("Services"),
                          const SizedBox(height: 16.0),
                          Expanded(
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 24.0,
                                      mainAxisSpacing: 24.0),
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 50.0,
                                  color: Colors.red,
                                  width: 50.0,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
