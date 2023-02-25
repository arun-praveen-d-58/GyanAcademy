import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;


  const CustomButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
        child: Text(text,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13.5,
          color: Colors.white,fontWeight: FontWeight.w700
        )),),style:ElevatedButton.styleFrom(
        minimumSize: Size(331,39.5),primary:HexColor("#282B85"),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        )

    ),

    );
  }
}
