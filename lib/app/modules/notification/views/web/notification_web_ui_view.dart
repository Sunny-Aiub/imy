import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ilu/app/core/helper/timestamp_formatter.dart';
import 'package:ilu/app/core/utils/app_colors.dart';
import 'package:ilu/app/core/utils/app_images.dart';
import 'package:ilu/app/core/utils/app_text_style.dart';
import 'package:ilu/app/modules/notification/controllers/notification_controller.dart';
import 'package:ilu/app/widgets/bottom_nav/main_bottom_nav.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NotificationWebUiView extends StatelessWidget {
  const NotificationWebUiView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GetBuilder<NotificationController>(
        builder: (controller) => Scaffold(
          backgroundColor: AppColors.colorWhite,
          body: Column(
            children: [
              // todo -> appbar
              Container(
                width: 600,
                padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 24),
                color: AppColors.colorWhite,
                child: GradientText(
                    "Notifications",
                    style: AppTextStyle.appTextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                    colors: const [
                      Color(0xffFF597B),
                      Color(0xffF5827A),
                    ]
                ),
              ),

              // todo -> body
              Expanded(
                child: controller.isLoading ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.colorDarkA,
                  ),
                ) : controller.notificationList.isEmpty ? Center(
                  child: Text(
                    "No Notifications found",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.appTextStyle(textColor: AppColors.colorDarkA, fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ) :  SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 600,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(controller.notificationList.length, (index) => Padding(
                          padding: index == controller.notificationList.length - 1 ? EdgeInsets.zero : const EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("IMY",
                                            style: AppTextStyle.appTextStyle(
                                                textColor: AppColors.colorDarkA,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                height: 4,
                                                width: 4,
                                                decoration: const BoxDecoration(
                                                    color: AppColors.colorDarkB,
                                                    shape: BoxShape.circle)),
                                            const Gap(8),
                                            Text(formatTimestamp(controller.notificationList[index].dateTime),
                                                style: AppTextStyle.appTextStyle(
                                                    textColor:
                                                    AppColors.colorDarkB,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Gap(4),
                                    Text(
                                        controller.notificationList[index].message,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: AppTextStyle.appTextStyle(
                                            textColor: AppColors.colorDarkA,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const MainBottomNav(currentScreen: 3, isWeb: true),
        )
      ),
    );
  }
}
