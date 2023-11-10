import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RefactorTextFormField extends StatelessWidget {
 RefactorTextFormField({super.key, required this.text,this.icon});
 String? text;
 IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SizedBox(
        height: 40.h,
        width: 324.w,
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF5F5F5),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xFFF5F5F5),
              ),
            ),
            suffixIcon: Icon(
              icon,size: 50,
              color: Color(0xFFA8A8A8),
            ),
            labelText: text!,
            labelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 15.w,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
