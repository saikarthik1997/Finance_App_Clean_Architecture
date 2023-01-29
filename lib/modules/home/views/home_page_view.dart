import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                    Get.offAllNamed(AppRoutes.signIn);
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
          titleSpacing: 8.0,
          title: controller.loading
              ? null
              : Text(
                  "Hello ${controller.homeData?.name ?? ""}",
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
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
                  ),
                ),
                labelColor: AppColors.primaryColor,
                onTap: (index) {},
                tabs: [
                  const Tab(
                    icon: Icon(Icons.home_outlined),
                    text: "Home",
                  ),
                  Tab(
                    icon: Image.asset(
                      AppImages.investmentImage,
                      height: 23.0,
                    ),
                    text: "Investment",
                  ),
                  Tab(
                    icon: Image.asset(
                      AppImages.paymentImage,
                      height: 23,
                    ),
                    text: "Payment",
                  ),
                  const Tab(
                    icon: Icon(Icons.credit_card),
                    text: "Credit",
                  ),
                  const Tab(
                    icon: Icon(Icons.person_outline),
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
                        const SizedBox(height: 8.0),
                        SizedBox(
                          height: 200.0,
                          child: ListView.separated(
                            controller: controller.scrollController,
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
                                width: 325.0,
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
                                      Builder(
                                        builder: (context) {
                                          List<String>? decimalSplit =
                                              item?.value?.split('.');
                                          String? firstHalf = decimalSplit?[0];
                                          String? secHalf = decimalSplit?[1];
                                          return Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "${item?.currency} ${firstHalf}",
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 26.0),
                                              ),
                                              if (secHalf != null)
                                                Text(
                                                  ".$secHalf",
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20.0),
                                                )
                                            ],
                                          );
                                        },
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
                              const SizedBox(height: 8.0),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 16.0),
                                    const Text(
                                      "Services",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 16.0),
                                    Expanded(
                                      child: GridView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: 6,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                crossAxisSpacing: 20.0,
                                                mainAxisSpacing: 20.0),
                                        itemBuilder: (context, index) {
                                          ServicesData? item = controller
                                              .homeData?.servicesData?[index];
                                          return Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.rectangle,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                    color: AppColors
                                                        .cardShadowColor,
                                                    blurRadius: 8.0,
                                                    offset: Offset(0.0, 0.0),
                                                  )
                                                ]),
                                            child: Center(
                                                child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    String appImgPath =
                                                        controller.getImgSrc(
                                                            item?.displayLabel ??
                                                                "");
                                                    if (item?.displayLabel ==
                                                        "Cards") {
                                                      return Icon(
                                                        Icons.credit_card,
                                                        size: 30,
                                                      );
                                                    }
                                                    if (appImgPath
                                                        .endsWith('.svg')) {
                                                      return SvgPicture.asset(
                                                        appImgPath,
                                                        height: 30.0,
                                                      );
                                                    } else {
                                                      return Image.asset(
                                                        appImgPath,
                                                        height: 30.0,
                                                      );
                                                    }
                                                  },
                                                ),
                                                const SizedBox(height: 16.0),
                                                Text(
                                                  item?.displayLabel ?? "",
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                )
                                              ],
                                            )),
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
