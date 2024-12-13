
import 'package:flutter/material.dart';
import 'package:tictactoe/utils/color_constant.dart';
import 'package:tictactoe/utils/style_constant.dart';
import 'package:tictactoe/view/screens/game_screen.dart';
import 'package:tictactoe/view/widgets/custom_button.dart';


class PlayersList extends StatefulWidget {
  const PlayersList({super.key});

  @override
  State<PlayersList> createState() => _PlayersListState();
}

class _PlayersListState extends State<PlayersList> {

  @override
  void dispose() {
    oneController.dispose();
    twoController.dispose();
    super.dispose();
  }

  TextEditingController oneController = TextEditingController();
  TextEditingController twoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "O'yinchilar nomini kiriting",
              style: StyleConstant.headStyle,
            ),
            SizedBox(height: 40),
            TextField(
              controller: oneController,
              style: StyleConstant.rulesDes,
              decoration: InputDecoration(
                  border: StyleConstant.border,
                  focusedBorder: StyleConstant.focusedBorder,
                  prefixIcon: Icon(
                    Icons.close,
                    size: 30,
                    color: ColorConstant.primaryWhite,
                  ),
                  hintText: "O'yinchi X",
                  hintStyle: TextStyle(color: ColorConstant.primaryGrey)),
            ),
            SizedBox(height: 20),
            TextField(
              controller: twoController,
              style: StyleConstant.rulesDes,
              decoration: InputDecoration(
                  border: StyleConstant.border,
                  focusedBorder: StyleConstant.focusedBorder,
                  prefixIcon: Icon(
                    Icons.radio_button_off,
                    size: 30,
                    color: ColorConstant.primaryWhite,
                  ),
                  hintText: "O'yinchi O",
                  hintStyle: TextStyle(color: ColorConstant.primaryGrey)),
            ),
            SizedBox(height: 20),
            Text(
              "Esingizda bo'lsin, birinchi navbatda \"X\" o'yinchisi boshlanadi",
              style: StyleConstant.textStyle3,
            ),
            SizedBox(height: 50),
            CustomButton(
              buttonText: "Boshlash",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        playerOne: oneController.text.isNotEmpty
                            ? oneController.text
                            : "O'yinchi X",
                        playerTwo: twoController.text.isNotEmpty
                            ? twoController.text
                            : "O'yinchi O",
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
