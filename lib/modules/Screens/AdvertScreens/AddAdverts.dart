import 'package:esm/Models/HostDetailModels/advert_model.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/utils/Constants.dart';
import 'package:esm/resources/widgets/app_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:intl/intl.dart';

class AddAdverts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddState();
  }

}
class AddState extends State<AddAdverts>{
  List<AdvertModel> addList = [

  ];
  var adType,currencyType;

  TextEditingController daysController = TextEditingController();
  TextEditingController duesController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  DateTime openingdate = DateTime.now();
  String OpeningDate="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizeBoxHeight128(),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Form(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightgreybgColor,
                      border: Border.all(color: Colors.transparent, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.lightgreybgColor,
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          AppText(
                            'Add Advertisement ',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          SizedBox(

                            child: DropdownButtonHideUnderline(
                              child:
                              DropdownButtonFormField(
                                value: adType,
                                decoration: InputDecoration(
                                  enabled: false,
                                  filled: true,
                                  fillColor: AppColors.primaryColor,
                                  contentPadding: EdgeInsets.all(10),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.0,
                                        style: BorderStyle.none),
                                    borderRadius:
                                    BorderRadius.all(
                                        Radius.circular(30.0)),
                                  ),
                                ),
                                iconSize: 20,
                                hint: const Text("Please Select Type of Advertisement"),
                                iconEnabledColor: AppColors.greyHintColor,
                                validator: (value) => value == null
                                    ? 'Choose type'
                                    : null,
                                style: TextStyle(
                                    color:AppColors.greyHintColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                                isDense: true,


                                items: addList.map((item) {
                                  return DropdownMenuItem(
                                    value:item.title.toString(),
                                    child: Text(
                                      item.title.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    adType= newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'How many days',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          Card(

                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AppIconField(
                                controller: daysController,
                                hint: '1',

                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validator: (val) {
                                  if (val == null || val.trim().isEmpty) {
                                    return "required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'Total dues in Dollars',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          Card(

                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AppIconField(
                                controller: duesController,
                                hint: '',

                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validator: (val) {
                                  if (val == null || val.trim().isEmpty) {
                                    return "required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'Choose Currency ',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          SizedBox(

                            child: DropdownButtonHideUnderline(
                              child:
                              DropdownButtonFormField(
                                value: currencyType,
                                decoration: InputDecoration(
                                  enabled: false,
                                  filled: true,
                                  fillColor: AppColors.primaryColor,
                                  contentPadding: EdgeInsets.all(10),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.0,
                                        style: BorderStyle.none),
                                    borderRadius:
                                    BorderRadius.all(
                                        Radius.circular(30.0)),
                                  ),
                                ),
                                iconSize: 20,
                                hint: const Text("AED -1"),
                                iconEnabledColor: AppColors.greyHintColor,
                                validator: (value) => value == null
                                    ? 'Choose type'
                                    : null,
                                style: TextStyle(
                                    color:AppColors.greyHintColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                                isDense: true,


                                items: addList.map((item) {
                                  return DropdownMenuItem(
                                    value:item.title.toString(),
                                    child: Text(
                                      item.title.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    adType= newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'Description',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          Card(

                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AppIconField(
                                controller: descController,
                                hint: 'Please Enter Decription',

                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validator: (val) {
                                  if (val == null || val.trim().isEmpty) {
                                    return "required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'Upload Media',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          Card(

                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: AppIconField(
                                controller: descController,
                                hint: '',
                                isEnabled: false,


                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.next,
                                validator: (val) {
                                  if (val == null || val.trim().isEmpty) {
                                    return "required";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppText(
                            'Select Start Date',
                            size: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          SizeBoxHeight8(),
                          Card(

                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(

                                child: AppIconField(
                                  suffixIcon: Constants.calendarIcon,

                                  controller: startDateController,
                                  hint: "${openingdate.day}-${openingdate.month}-${openingdate.year}",

                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  onTap: ()async{
                                    FocusScope.of(context).requestFocus(new FocusNode());
                                    await selectDateFunction(context);
                                    startDateController.text = DateFormat('dd-MM-yyyy').format(openingdate);


                                  },
                                  onChanged: (String value){
                                    OpeningDate=value;
                                  },
                                  validator: (val) {
                                    if (val == null || val.trim().isEmpty) {
                                      return "required";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizeBoxHeight16(),
                          AppButton(
                            onTap: () {
                              Navigator.pop(context);
                              // if (loginFormKey.currentState!.validate()) {
                              //   String s = emailController.text;
                              // }
                            },
                            assetUrl: Constants.payNowBtn,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
  Future<void> selectDateFunction(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: openingdate,
        firstDate: DateTime(2000, 8),
        lastDate: DateTime(2500));
    if (picked != null && picked != openingdate) {
      setState(() {
        openingdate = picked;
        DateFormat formatter = DateFormat('dd-MM-yyyy');
        OpeningDate = formatter.format(openingdate);


      });
    }
  }


}