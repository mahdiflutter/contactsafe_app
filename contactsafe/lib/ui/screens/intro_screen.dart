import 'package:contactsafe/constants/maincolors_constant.dart';
import 'package:contactsafe/ui/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: IntroductionScreen(
        pages: getPages(),
        showDoneButton: true,
        done: const Text(
            'ENTER',
            style: TextStyle(
              color: MainColors.mainBlue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            ),
          );
        },
        showNextButton: true,
        showBackButton: true,
        dotsDecorator: const DotsDecorator(
          activeColor: MainColors.mainBlue,
        ),
        next: const Icon(
          Icons.chevron_right_rounded,
          size: 45,
          color: MainColors.mainBlue,
        ),
        back: const Icon(
          Icons.chevron_left_rounded,
          size: 45,
          color: MainColors.mainBlue,
        ),
      )),
    );
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "New Space",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: MainColors.mainBlue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          bodyTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        body:
            "Save your contacts somewhere outside of your SIM card and phone ",
        image: Image.asset("assets/icons/intro1icon.png"),
      ),
      PageViewModel(
        title: "Security in Storage",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: MainColors.mainBlue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          bodyTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        body:
            "Create a password to enter the  Contact Safe and store your information encrypted",
        image: Image.asset("assets/icons/intro2icon.png"),
      ),
      PageViewModel(
        title: "Create Link",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: MainColors.mainBlue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          bodyTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        body:
            "Create links for your contacts to communicate with social networks",
        image: Image.asset("assets/icons/intro3icon.png"),
      ),
    ];
  }
}
