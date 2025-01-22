import 'package:fe_interview_task/pages/base/base_ui.dart';
import 'package:fe_interview_task/pages/home/home_vm.dart';
import 'package:fe_interview_task/utils/assets.dart';
import 'package:fe_interview_task/utils/colors.dart';
import 'package:fe_interview_task/utils/constants.dart';
import 'package:fe_interview_task/utils/widget_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      notDefaultLoading: true,
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(children: [
            Image.asset('assets/images/video.png'),
            Container(decoration: BoxDecoration(gradient:
            LinearGradient(colors: [
              AppColor.transparent,
              AppColor.transparent,
              AppColor.transparent,
              AppColor.transparent,
              AppColor.black,
              AppColor.black,
              AppColor.black,
              AppColor.black
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )),),
            Positioned(
              top: 0.sp,
                right: 0.sp,
                left: 0.sp,
                bottom: 20.sp,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 60.sp),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('AStroll Bonfire', style:
                          TextStyle(fontWeight: FontWeight.w700,
                            color: AppColor.primaryLight,
                            fontSize: 34.sp,
                            shadows: [
                              Shadow(offset:
                              Offset(2.sp, 2.sp),
                              color: Colors.grey,
                              blurRadius: 6.sp)
                            ]
                          )
                            ,),
                        Icon(Icons.keyboard_arrow_down_rounded,
                        color: AppColor.primaryLight,
                        size: 44.sp,
                        shadows: [Shadow(color: Colors.grey,
                        offset:    Offset(0.sp, 2.sp)),

                     ],)
                      ],
                    ),
                  10.sp.sbH,
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.clock, height: 15.sp,),
                      5.sp.sbW,
                      AppText('22h 00m',
                      style: TextStyle(
                        color: AppColor.white, fontSize: 12.sp, fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(color: Colors.grey,
                          blurRadius: 4.sp)
                        ]
                      ),),
                      15.sp.sbW,
                      Image.asset(AppIcons.person, height: 15.sp,),
                      5.sp.sbW,
                      AppText('103', style: TextStyle(
                          color: AppColor.white, fontSize: 12.sp, fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(color: Colors.grey,
                                blurRadius: 4.sp)
                          ]
                      )),],),
                  ],),
                )),
            Padding(padding:
            EdgeInsets.only(bottom: 80.sp), child:
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    96.sp.sbW,
                    AppText('What is your favourite time\nof the day?',
                    size: 20.sp,
                    isBold: true,
                    color: AppColor.white90,),
                  ],
                ),
                10.sp.sbH,
                AppText('"Mine is definitely the peace in the morning"',
                    style:
                    TextStyle(
                        color: AppColor.subtextColor,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic)),
              20.sp.sbH,
              Wrap(spacing: 10.sp,
                runSpacing: 10.sp,
                children: List.generate(model.options.length, (i) =>
              GestureDetector(
                onTap: (){
                  model.selectOption(i);
                },
                child: Container(
                  height: 58.sp, width: 166.sp,
                  padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 5.sp.sp),
                  decoration: BoxDecoration(color:
                AppColor.grey,
                  border: model.selectedoption == i ?Border.all(color:
                  AppColor.primary, width: 2.2.sp): null,
                  borderRadius:
                  BorderRadius.circular(12.r)),
                  child: Row(children: [
                    Container(alignment: Alignment.center,
                      height: 20.sp, width: 20.sp,
                      decoration: BoxDecoration(
                        color: model.selectedoption == i?
                          AppColor.primary: null,
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(color: AppColor.primary)
                      ), child:
                      AppText(model.options[i],
                        color:
                        AppColor.white,
                      size: 12.sp,),),
                    10.sp.sbW,
                    AppText(model.optionDes[i],
                      size: 14.sp,
                      color: AppColor.white,)
                  ],),
                ),

              )),),
                20.sp.sbH,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.sp),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    AppText('Pick your option. \nSee who has a similar mind, ',
                        color: AppColor.white90,
                    size: 12.sp,),
                      Row(children: [
                        Container(height: 48.sp, width: 48.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(
                            color: AppColor.primary,
                            width: 2.2.sp
                          )
                        ),
                        child:
                          Icon(Icons.mic_none_rounded,
                          color: AppColor.primary,)
                          ,),
                        10.sp.sbW,
                        Container(height: 48.sp, width: 48.sp,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                              borderRadius: BorderRadius.circular(100.r),
                              border: Border.all(
                                  color: AppColor.primary
                              )
                          ),
                          child:
                          Icon(Icons.arrow_forward,
                            color: null,)
                          ,)
                      ],)
                  ],),
                )

            ],
            ),),
            Positioned(top: 425.h,left: 65.sp,
              child: Container(
                height: 20.h,
                width: 106.sp,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius:
                BorderRadius.circular(100.r),
                    color: AppColor.black90),
                child: AppText('Angelina, 28',
                  size: 11.sp,
                  isBold: true,
                  color: AppColor.white90,),
              ),
            ),
            Positioned(left:25.sp, top: 415.h,
              child:        Row(
                children: [
                  Image.asset(AppImages.photo,
                    height: 70.h,),
                ],
              ),
            ),
            Positioned(
              bottom: 0.sp,
                child: Container(width: width(context),
              height: 75.sp,
              decoration: BoxDecoration(color: AppColor.black90),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Image.asset(AppIcons.cards, height: 25.sp,),
                  ],
                ),
                SizedBox(
                  child: Container(width: 44.sp,
                    child: Stack(
                      children: [
                        Image.asset(AppIcons.fire, height: 25.sp,),
                        Positioned(right: 10.sp, top: 2.sp,
                          child: Container(height: 13.sp, width: 16.sp,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColor.primary,
                                border: Border.all(color:
                                AppColor.black90),
                                borderRadius:
                                BorderRadius.circular(10.r)),
                            child: AppText('', size: 8.sp, isBold: true,),),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 44.sp,
                  child: Stack(
                    children: [
                      Image.asset(AppIcons.messages, height: 25.sp,),
                      Positioned(right: 10.sp, top: 2.sp,
                        child: Container(height: 13.sp, width: 16.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColor.primary,
                            border: Border.all(color:
                            AppColor.black90),
                            borderRadius:
                        BorderRadius.circular(10.r)),
                        child: AppText('10', size: 8.sp, isBold: true,),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 44.sp,
                  child: Stack(
                    children: [
                      Image.asset(AppIcons.person, height: 44.sp, color: AppColor.grey1,),
                    ],
                  ),
                )],),
            ))
          ],),
        );
      }
    );
  }
}