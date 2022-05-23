import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_v/widgets/app_large_text.dart';
import 'package:flutter_cubit_v/widgets/app_text.dart';
import 'package:flutter_cubit_v/widgets/responsive_button.dart';
import '../colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'img/' + images[index],
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 150,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: 'Trips',
                        ),
                        AppText(
                          text: 'Mountains',
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                'Mountain hikes give you an incredible sense of freedom along with endurance tests',
                            color: AppColors.textColor2,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDot) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          width: 8,
                          height: index == indexDot ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8),
                            color: index == indexDot
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
