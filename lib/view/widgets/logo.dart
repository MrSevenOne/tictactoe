import 'package:flutter/material.dart';
import 'package:tictactoe/utils/color_constant.dart';
import 'package:tictactoe/utils/style_constant.dart';

class ReusableLogo extends StatelessWidget {
  final bool visible;

  const ReusableLogo({
    super.key,
    this.visible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.primaryWhite.withOpacity(0.9),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                child: Text(
                  "X",
                  style: StyleConstant.logoStyle,
                ),
              ),
              Positioned(
                right: 10,
                top: 18,
                bottom: 10,
                child: Text(
                  "O",
                  style: StyleConstant.logoStyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Visibility(
          visible: visible,
          child: Text(
            "TIC TAC TOE",
            style: StyleConstant.primaryTextStyle,
          ),
        ),
      ],
    );
  }
}
