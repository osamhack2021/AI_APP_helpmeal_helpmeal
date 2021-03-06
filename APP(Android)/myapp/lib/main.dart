import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/src/controller/sign_up_controller.dart';

import 'package:myapp/src/model/colors.dart';
import 'package:myapp/src/view/first_page.dart';
import 'package:myapp/src/view/review/my_review.dart';
import 'package:myapp/src/view/review_analysis_page.dart';
import 'package:myapp/src/view/review/score_review_page.dart';
import 'src/app.dart';
import 'src/binding/init_binding.dart';
import 'src/controller/select_troop_controller.dart';
import 'src/view/meal/meal_control_page.dart';
import 'src/view/notice/notice_add_page.dart';
import 'src/view/notice/notice_check_page.dart';
import 'src/view/suggestion/suggestion_check_page.dart';
import 'src/view/suggestion/suggestion_complain_page.dart';
import 'src/view/user/allergy_page.dart';
import 'src/view/user/login_page.dart';
import 'src/view/user/sign_up_page.dart';
import 'src/view/user/troop_select_page.dart';

void main() {
  runApp(const MyAPP());
}

//Codespace가 갑자기 안되면 10분 있다가 하기
class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: CustomColor.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: CustomColor.orangeColor,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/first',
      initialBinding: InitBinding(),
      getPages: [
        GetPage(name: '/', page: () => const App()),
        GetPage(name: '/first', page: () => const FirstPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/allergy', page: () => const AllergyPage()),
        GetPage(
            name: '/suggestComplain',
            page: () => const SuggestionComplainPage()),
        GetPage(name: '/noticeCheck', page: () => const NoticeCheckPage()),
        GetPage(name: '/noticeAdd', page: () => NoticeAddPage()),
        GetPage(name: '/myReview', page: () => const MyReviewPage()),
        GetPage(name: '/suggestCheck', page: () => const SuggestionCheckPage()),
        GetPage(name: '/reviewAnalysis', page: () => ReviewAnalysisPage()),
        GetPage(name: '/mealControl', page: () => MealControlPage()),
        GetPage(
          name: '/troopSelect',
          page: () => const TroopSelectPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<SelectTroopController>(() => SelectTroopController());
          }),
        ),
        GetPage(
          name: '/signUp',
          page: () => const SignUpPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<SignUpController>(() => SignUpController());
          }),
        ),
        GetPage(name: '/scoreReview', page: () => const ScoreReviewPage()),
      ],
    );
  }
}
