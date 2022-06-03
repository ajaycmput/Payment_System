import 'package:flutter/cupertino.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backGroundColor;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBorder;
  final String text;
  const AppLargeButton({Key? key,
  this.backGroundColor:AppColor.mainColor,
  this.textColor,
  this.onTap,
  this.isBorder:false,
  required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,  //default 50 <Adjusted due to screen size>
              color: textColor
            ),
          ),
        )
      ),
    );
  }
}