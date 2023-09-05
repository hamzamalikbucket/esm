import 'package:esm/Widgets/HeadingTextWidget.dart';
import 'package:esm/Widgets/NormalTextWidget.dart';
import 'package:esm/Widgets/InputWidget.dart';
import 'package:esm/Widgets/ToolbarImage.dart';
import 'package:esm/utils/Constants.dart';
import 'package:esm/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactState();
  }


}
class ContactState extends State<ContactUs>{
  final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>();
  late String nAme, eMail,sUb,mSg;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0,12,28,0),
                child: HeadingTextWidget(
                  input: 'Contact Us',
                  fontsize: 16,
                  fontWeight: FontWeight.w700,
                  textcolor: AppColors.black,
                ),
              ),
              form(context),
              SizedBox(height: 10,),

              SvgPicture.asset(

                Constants.contactFooterImg,
                width: MediaQuery.sizeOf(context).width,
              ),



            ],


          ),
        ),


      ),
    );
  }
  Widget form(BuildContext context){

    return Form(

      child: Padding(
        padding: const EdgeInsets.fromLTRB(28.0,12,28,0),
        child: Container(
          decoration: BoxDecoration(

              color: AppColors.lightgreybgColor,
            border: Border.all(color: Colors.transparent, width: 2),
            borderRadius: BorderRadius.circular(10),


            boxShadow: [
              BoxShadow(
                color: AppColors.lightgreybgColor,
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],

          ),

          child: Padding(
            padding: const EdgeInsets.fromLTRB(35.0,12,35,10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left:20,bottom: 10),
                 child: NormalTextWidget(
                   input: 'Name ',
                   fontsize: 10,
                   fontWeight: FontWeight.w400,
                   textcolor: AppColors.black,
                 ),
               ),
               InputWidget(
                   title: "",
                   isRequired: true,
                   keyboardType: TextInputType.text,

                   value: (val) {
                     nAme = val!;
                   },
                   validate: true,
                   isPassword: false,
                   hintcolour: AppColors.greyHintColor),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left:20,bottom: 10),
                 child: NormalTextWidget(
                   input: 'Email',
                   fontsize: 10,
                   fontWeight: FontWeight.w400,
                   textcolor: AppColors.black,
                 ),
               ),
               InputWidget(
                   title: "",
                   isRequired: true,
                   keyboardType: TextInputType.text,

                   value: (val) {
                     eMail = val!;
                   },
                   validate: true,
                   isPassword: false,
                   hintcolour: AppColors.greyHintColor),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left:20,bottom: 10),
                 child: NormalTextWidget(
                   input: 'Subject',
                   fontsize: 10,
                   fontWeight: FontWeight.w400,
                   textcolor: AppColors.black,
                 ),
               ),
               InputWidget(
                   title: "",
                   isRequired: true,
                   keyboardType: TextInputType.text,

                   value: (val) {
                     sUb = val!;
                   },
                   validate: true,
                   isPassword: false,
                   hintcolour: AppColors.greyHintColor),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left:20,bottom: 10),
                 child: NormalTextWidget(
                   input: 'Message',
                   fontsize: 10,
                   fontWeight: FontWeight.w400,
                   textcolor: AppColors.black,
                 ),
               ),
               InputWidget(
                   title: "",
                   isRequired: true,
                   keyboardType: TextInputType.text,
                   maxline: 5,

                   value: (val) {
                     sUb = val!;
                   },
                   validate: true,
                   isPassword: false,
                   hintcolour: AppColors.greyHintColor),
               SizedBox(height: 10,),
               SizedBox(height: 10,),
               SizedBox(height: 10,),
               SvgPicture.asset(

                 Constants.enquiryBtn,

               ),
             ],


    ),
          ),
        ),
      ),


    );
  }

}