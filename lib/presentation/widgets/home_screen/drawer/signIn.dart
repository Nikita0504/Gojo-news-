import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojo_news/internal/colors.dart';
import 'package:gojo_news/presentation/widgets/home_screen/drawer/text_field.dart';
import '../../../../domain/state/home_screen_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    HomeScreenController controller = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: size.height * 0.03,
            bottom: size.height * 0.01,
          ),
          child: Text(
            'Log in to your account',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const TextFieldWidget(
          hintText: 'Name/Email',
          obscureTex: false,
          icon: Icon(
            Icons.person,
            color: AppColors.textColor,
          ),
          type: 'name',
        ),
        const TextFieldWidget(
          hintText: 'Password',
          obscureTex: true,
          icon: Icon(
            Icons.password,
            color: AppColors.textColor,
          ),
          type: 'password',
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () => controller.signUpOrSignIn(),
              child: Ink(
                height: size.height * 0.05,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.sideColor, width: 2.5),
                    color: AppColors.searchColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: AppColors.textColor, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'if you do not have an account,',
                  style: Theme.of(context).textTheme.titleSmall),
              TextSpan(
                  text: ' click here',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .displayLarge!
                      .copyWith(fontSize: 14, color: Colors.blueAccent),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => controller.changeMode())
            ],
          ),
        ),
      ],
    );
  }
}
