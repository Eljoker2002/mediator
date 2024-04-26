import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.labelText,
    this.validator,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.onSaved,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String labelText;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool obscureText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      child: TextFormField(
        controller: controller,
        maxLines: 1,
        style: TextStyle(
          fontSize: 15.sp,
        ),
        cursorHeight: 17.h,
        onSaved: onSaved,
        validator: validator,
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: AppColors.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: AppColors.gray83,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: AppColors.red,
            ),
          ),
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: AppColors.grayB7,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: AppColors.grayCB,
            size: 20.sp,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

//
// class aa extends StatelessWidget {
//   const aa({Key? key}) : super(key: key);
//   bool visible = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (value) {
//         if (value!.isEmpty) {
//           return 'Password must not be empty';
//         } else if (value.length < 6) {
//           return 'password is too short';
//         }
//         return null;
//       },
//       obscureText: visible,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//         enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: AppColors.lGray)),
//         labelText: 'Password',
//         labelStyle: GoogleFonts.poppins(
//           textStyle: TextStyle(
//               color: Color(0xFFA8A8A8),
//               fontSize: 15,
//               fontWeight: FontWeight.w400),
//         ),
//         prefixIcon: Icon(
//           Icons.lock,
//           color: Color(0xFFA8A8A8),
//         ),
//         suffixIcon: IconButton(
//           onPressed: () {
//             setState(() {
//               visible = !visible;
//             });
//           },
//           icon: visible
//               ? const Icon(
//                   Icons.visibility_off,
//                   color: Color(0xFFA8A8A8),
//                 )
//               : const Icon(
//                   Icons.remove_red_eye,
//                   color: AppColors.darkBlue,
//                 ),
//         ),
//       ),
//     );
//   }
// }
