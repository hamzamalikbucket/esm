import 'package:esm/utils/app_colors.dart';
import 'package:flutter/material.dart';




class InputWidget extends StatelessWidget {
  String title;
  late Color hintcolour;
  bool isPassword = false;
  bool validate = true;
  TextInputType keyboardType = TextInputType.text;
  ValueChanged<String?> value;
  bool isRequired = false;
  String? error;
  int? maxlength;
  int? maxline;
  IconData? icon;

  InputWidget(
      {Key? key,
      required this.title,
      required this.isRequired,
      required this.keyboardType,
      required this.value,
      this.error,
        this.maxlength,
        this.maxline,
      required this.validate,
      required this.isPassword,
      required this.hintcolour,
        this.icon,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      textInputAction: TextInputAction.done,
      keyboardType: keyboardType,
      maxLength: maxlength,
      maxLines: maxline,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(21),

          prefixIcon: Icon(
            icon,
            color: AppColors.greyHintColor,


          ),
          filled: true,

          fillColor: AppColors.primaryColor,
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(30),

            borderSide: BorderSide(width:2,color: AppColors.primaryColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color:AppColors.primaryColor),
          ),
          hintText: title,
          alignLabelWithHint: true,





          /*  labelText: title,*/
          hintStyle: TextStyle(color: hintcolour)),
      validator: (value) {
        if (validate && value!.length < 10) {
          return ;
        }
      },
      onSaved: value,
    );
  }
}
