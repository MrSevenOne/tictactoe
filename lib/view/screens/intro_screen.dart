import 'package:flutter/material.dart';
import 'package:tictactoe/utils/color_constant.dart';
import 'package:tictactoe/view/screens/howto_play.dart';
import 'package:tictactoe/view/screens/players_list.dart';
import 'package:tictactoe/view/widgets/custom_button.dart';
import 'package:tictactoe/view/widgets/logo.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableLogo(),
            SizedBox(height: 100),
            CustomButton(
              buttonText: "Boshlash",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayersList(),
                    ));
              },
            ),
            SizedBox(height: 40),
            CustomButton(
              buttonText: "qo'llanma",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameRules(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
