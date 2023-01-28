import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mms_assignment/common/values/app_colors.dart';
import 'package:mms_assignment/common/values/app_images.dart';
import 'package:mms_assignment/common/values/strings.dart';
import 'package:mms_assignment/common/widgets/buttons.dart';
import 'package:mms_assignment/data/models/home/home_page_models.dart';
import 'package:mms_assignment/modules/home/controllers/home_page_controller.dart';
import 'package:mms_assignment/routes/app_routes.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  height: 180.0,
                  child: Center(child: Image.asset(AppImages.splashTitleImage)),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                // const Spacer(),
                const SizedBox(
                  height: 12.0,
                ),
                InkWell(
                  onTap: () {
                    Get.offAllNamed(AppRoutes.welcome);
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        Icons.logout_outlined,
                        size: 36.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Logout")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          actions: const [
            Icon(Icons.notifications_outlined),
            SizedBox(width: 20.0)
          ],
          title: controller.loading ? null : const Text("Hello Jeremy"),
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
          child: controller.loading
              ? const Center(
                  child: CupertinoActivityIndicator(
                    radius: 26.0,
                  ),
                )
              : controller.errorState
                  ? Center(
                      child: Text(controller.errorMessage ??
                          CommonStrings.somethingWrong),
                    )
                  : Column(
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
                            itemCount:
                                controller.homeData?.tilesData?.length ?? 0,
                            itemBuilder: (context, index) {
                              TilesData? item =
                                  controller.homeData?.tilesData?[index];
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        controller.getBgImageSrcFromTitle(
                                            item?.displayLabel ?? "")),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                width: 300.0,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 40.0,
                                      ),
                                      Text(
                                        item?.displayLabel ?? "",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0),
                                      ),
                                      const SizedBox(height: 16.0),
                                      Text(
                                        "${item?.value} ${item?.currency}",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 26.0),
                                      ),
                                      const SizedBox(
                                        height: 30.0,
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                        child: PrimaryButton(
                                            textColor: Colors.white,
                                            buttonColor:
                                                AppColors.yellowButtonColor,
                                            buttonText: item?.buttonTxt ?? "",
                                            onTap: () {}),
                                      )
                                    ]),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 16.0),
                                    const Text("Services"),
                                    const SizedBox(height: 16.0),
                                    Expanded(
                                      child: GridView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
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
