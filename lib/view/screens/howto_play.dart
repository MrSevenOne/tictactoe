import 'package:flutter/material.dart';
import 'package:tictactoe/utils/color_constant.dart';
import 'package:tictactoe/utils/style_constant.dart';

class GameRules extends StatefulWidget {
  const GameRules({super.key});

  @override
  State<GameRules> createState() => _GameRulesState();
}

class _GameRulesState extends State<GameRules> {
  List<String> gameRules = [
    "O'yin 3x3 o'lchamdagi bo'sh kvadratlarda o'ynaladi.",
    "Ikki o'yinchi navbat bilan bo'sh kvadratlarni belgilaydi.",
    "Birinchi o'yinchi X, ikkinchi o'yinchi esa O belgilarini ishlatadi.",
    "O'yinchilar uchta o'z belgilari to'g'ri chiziq, ustun yoki diagonalda joylashishini maqsad qiladilar.",
    "Agar bir o'yinchi uchta bir xil belgini to'g'ri chiziqda joylashtirsa, u o'yinchi g'alaba qozonadi.",
    "Agar barcha kvadratlar to'ldirilsa va g'olib bo'lmasa, o'yin durang bilan yakunlanadi.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SingleChildScrollView( // Make the entire body scrollable
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorConstant.primaryWhite,
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Qanday o\'ynash kerak",
                style: StyleConstant.headStyle,
              ),
              SizedBox(height: 15),
              Divider(
                height: 1,
                endIndent: 180,
              ),
              SizedBox(height: 25),
              // Use ListView.builder instead of ListView.separated for better scrolling performance
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gameRules.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20), // Adjust spacing
                    child: Text(
                      "${index + 1}.  ${gameRules[index]}",
                      style: StyleConstant.rulesDes,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
