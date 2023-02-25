import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class CustomOutlineButton extends StatelessWidget {
  final Color color;
  const CustomOutlineButton({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 163.75,

      child: ElevatedButton(
          child: Text(
              "Enroll",
              style: TextStyle(fontSize: 14,fontFamily: "Poppins",fontWeight: FontWeight.w600)
          ),

          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
             shadowColor: MaterialStateProperty.all(color),
              foregroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                      side: BorderSide(color: color),

                  ),

              ),

          ),
          onPressed: () => null,

      ),

    );
  }
}

