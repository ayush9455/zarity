import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import 'package:zarity_health/src/core/theme/theme_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 5,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      backgroundColor: theme.colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClayContainer(
                    color: theme.colorScheme.background,
                    height: 60.h,
                    width: 60.h,
                    borderRadius: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        'assets/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Afternoon,',
                        style: theme.textTheme.titleSmall!.copyWith(
                            color: const Color(0xFF3D5284), fontSize: 16.sp),
                      ),
                      Text(
                        'John Doe',
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: const Color(0xFF02012D)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ClayContainer(
                    color: theme.colorScheme.background,
                    height: 40.h,
                    width: 40.h,
                    borderRadius: 80,
                    child: Image.asset(
                      'assets/messenger.png',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: ClayContainer(
                        color: theme.colorScheme.background,
                        height: 40.h,
                        width: 40.h,
                        borderRadius: 80,
                        child: Icon(Icons.notifications_none_rounded),
                      ),
                    ),
                    Positioned(
                        right: 4,
                        bottom: 1,
                        child: Container(
                          // color: Colors.blue.shade200,
                          height: 16.h,
                          width: 16.h,
                          decoration: ShapeDecoration(
                              color: Colors.blue.shade300,
                              shape: CircleBorder(side: BorderSide())),
                          child: Center(
                              child: Text(
                            '1',
                            style: theme.textTheme.bodySmall!
                                .copyWith(color: Colors.white, fontSize: 10.sp),
                          )),
                        ))
                  ]),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              ClayContainer(
                color: theme.colorScheme.background,
                height: 70.h,
                width: double.maxFinite,
                borderRadius: 12,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: Row(
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        ClayContainer(
                          color: theme.colorScheme.background,
                          height: 60.h,
                          width: 60.h,
                          borderRadius: 80,
                        ),
                        ClayContainer(
                          curveType: CurveType.concave,
                          // depth: 10,
                          color: theme.colorScheme.background,
                          height: 50.h,
                          width: 50.h,
                          borderRadius: 80,
                        )
                      ]),
                      SizedBox(
                        width: 10.w,
                      ),
                      Flexible(
                        child: Text(
                          'This is a task list that Opens a dialogue box showing tasks, read more...',
                          style: theme.textTheme.titleSmall!.copyWith(
                              color: const Color(0xFF3D5284), fontSize: 16.sp),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Ordinary Title 1',
                style: theme.textTheme.titleSmall!
                    .copyWith(color: const Color(0xFF02012D)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 16,
                spacing: 16,
                children: [
                  ClayContainer(
                    height: 120.h,
                    width: 120.h,
                    color: theme.colorScheme.background,
                    borderRadius: 16,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.people_alt)),
                          Text(
                            'Button 1 Name',
                            style: theme.textTheme.titleSmall!.copyWith(
                                color: const Color(0xFF3D5284),
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClayContainer(
                    height: 120.h,
                    width: 120.h,
                    color: theme.colorScheme.background,
                    borderRadius: 16,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.people_alt)),
                          Text(
                            'Button 2 Name',
                            style: theme.textTheme.titleSmall!.copyWith(
                                color: const Color(0xFF3D5284),
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClayContainer(
                    height: 120.h,
                    width: 120.h,
                    color: theme.colorScheme.background,
                    borderRadius: 16,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.medical_information_outlined)),
                          Text(
                            'Button 3 Name',
                            style: theme.textTheme.titleSmall!.copyWith(
                                color: const Color(0xFF3D5284),
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Ordinary Title 2',
                style: theme.textTheme.titleSmall!
                    .copyWith(color: const Color(0xFF02012D)),
              ),
              SizedBox(
                height: 20.h,
              ),
              ClayContainer(
                color: theme.colorScheme.primary,
                height: 100.h,
                width: double.maxFinite,
                borderRadius: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'This is a state box with a message, showing that the section is empty right now',
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: Colors.grey,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Ordinary Title 3',
                style: theme.textTheme.titleSmall!
                    .copyWith(color: const Color(0xFF02012D)),
              ),
              SizedBox(
                height: 20.h,
              ),
              ClayContainer(
                emboss: true,
                color: theme.colorScheme.primary,
                width: double.maxFinite,
                borderRadius: 12,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 450.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ClayContainer(
                              color: theme.colorScheme.primary,
                              width: 350.w,
                            ),
                          ),
                          itemCount: 5,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ClayContainer(
                        color: theme.colorScheme.primary,
                        height: 60.h,
                        width: 220.w,
                        borderRadius: 12,
                        child: Center(
                          child: Text(
                            'Open List',
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: const Color(0xFF02012D)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                ' this is a random photo note with nothing specific, but could contain details that end this page',
                style: theme.textTheme.titleSmall!.copyWith(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Privacy',
                    style: theme.textTheme.bodyLarge!.copyWith(
                        color: Color(0xFF0666EB),
                        decorationColor: Color(0xFF0666EB),
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    'Terms',
                    style: theme.textTheme.bodyLarge!.copyWith(
                        color: Color(0xFF0666EB),
                        decorationColor: Color(0xFF0666EB),
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
