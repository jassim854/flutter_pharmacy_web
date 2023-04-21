import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_web/Helper/widget.dart';
import 'package:flutter_pharmacy_web/controllers/authcontroller.dart';
import 'package:flutter_pharmacy_web/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_web/view/Auth/Login_view.dart';
import 'package:flutter_pharmacy_web/view/HomePage/homepage.dart';
import 'package:flutter_pharmacy_web/view/welcomepage.dart';
import 'package:get/get.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class SignUpOrdinaryMember extends StatelessWidget {
  final authcontroller = Get.find<authController>();
  SignUpOrdinaryMember({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: ListView(children: [
      Container(
        height: 100,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Images.signUpHeader),
        )),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        height: 115,
        width: width,
        alignment: Alignment.center,
        color: Color(0xff262F36),
        child: Text(
          'REGISTRATION OF ORDINARY MEMBERS',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      Divider(
        height: 0,
        color: Color(0xffE7492B),
        thickness: 5,
      ),
      SizedBox(
        height: 100,
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          height: 250,
          width: width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'This is the registration page for the Italian National Parapharmacy Federation Portal.The following form must be completed in its entirety in order to enter all the data necessary to complete the registration. Once you accept the conditions, please proceed with the bank transfer in order to definitively conclude the registration procedure.The bank transfer must be sent to',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'National Federation of Italian Parapharmacies',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  'iban: IT87O0706216200000000003160\nReason: registration ...... "NAME OF PARAPHARMACY OR PHARMACIST"')
            ],
          ),
        ),
      ),
      Container(
          // height: 200,
          // width: 100,

          child: Column(
        children: [
          Container(
            height: 20,
            width: width * 0.4,
            margin: EdgeInsets.only(
              left: 65,
            ),
            child: Text(
              'The undersigned',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'FIRST NAME *',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'LAST NAME *',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'CITY OF BIRTH',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'DATE OF BIRTH',
            hintText: 'mm/dd/yyyy',
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 20,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              'in his Capacity as Owner or Legal Representative of the  ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'PARAPHARMACY',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'SITE IN*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'POSTAL CODE*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'PROVINCE*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'PLAZZA WAY*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'VAT NUMBER/Tax Code*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'UNIQUE CODE*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'TELEPHONE*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'CELL PHONE*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'FAX*',
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'EMAIL*',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              'If you are also interested in being part of the Vifarm Purchasing Group, to obtain more competitive price lists, indicate YES and you will be contacted as soon as possible. ',
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RowTextAndField(
            width: width,
            authcontroller: authcontroller,
            fieldName: 'VIFRAM MEMBERSHIP *',
            dropDownField: authcontroller.dropDown.value = true,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 140,
            width: width * 0.7,
            decoration: BoxDecoration(border: Border.all(width: 2)),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: width * 0.7,
                  color: Color(0xffEEEEEE),
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Payment data',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('QUOTE'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: width * 0.4,
                        height: 30,
                        child: customtextformfield(
                          filledColor: Color(0xffEEEEEE),
                          hinttext: '100',
                          controller: authcontroller.firstNameController,
                          prefixIcon: Container(
                            padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey))),
                            width: 30,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'ddd',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              'In order to complete the procedure, we remind you to proceed with the transfer of the all-inclusive sum of  € 100.00  , to be sent to:',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            height: 50,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              '''Bank for the development of credit cooperation
IBAN:  IT87O0706216200000000003160
Reason: Registration... "NAME OF PARAPHARMACY OR PHARMACIST''',
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              " Upon receipt of the bank transfer, you will be sent a welcome email and conclusion of the registration with an assigned Personal Code, with which you will be given many advantages that you can use directly on our website.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              "Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RowTextAndText(
            width: width,
            fieldName: "Privacy* ",
            text:
                'to authorize the federation to process my personal data pursuant to EU Regulation 2016/679',
          ),
          checkBoxTile(width),
          SizedBox(
            height: 20,
          ),
          RowTextAndText(
            width: width,
            fieldName: "Declaration* ",
            text:
                'asks to join the "National Federation of Parapharmacies" and undertakes to support all the initiatives undertaken for the development of the "Non-Conventioned Pharmacy" in Italy.',
          ),
          SizedBox(
            height: 20,
          ),
          RowTextAndText(
            height: 200,
            width: width,
            fieldName: " ",
            text: '''In particular, the undersigned declares:
to undertake to respect the statute, any Internal Regulations and social resolutions, as well as to\n favor the interests of the federation pursuant to the social statute;\nthe subscriber of this is aware pursuant to and for the purposes of article 76 of the consolidated\n text referred to in the Presidential Decree445/2000,of the responsibilities and civil and/or penal\n consequences envisaged in the event of false\n declarations and/or formation or use of false documents and of the fact that the Federation pursuant to art. 71 of the aforementioned\n consolidated text, reserves the right to carry out spot checks on the declarations produced\n, acquiring the relative documentation.
to subscribe and pay the all-inclusive fee of Euro 100.00. ''',
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              "IBAN: IT87O0706216200000000003160",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          checkBoxTile(width),
          SizedBox(
            height: 50,
          ),
          RowTextAndText(
            height: 50,
            width: width,
            fieldName: 'Regulation *',
            text:
                ''' ORDINARY Members: participate in and make use of all the activities, promotions, conventions,
initiatives and protections promoted by the Association, participate in the Assembly with the right to vote and, after 2 years of joining the association, they can access the associative positions''',
          ),
          checkBoxTile(width),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 30,
            width: width * 0.4,
            margin: EdgeInsets.only(left: 65),
            child: Text(
              "* Fields marked with an asterisk are mandatory.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: width * 0.4,
            child: CustomElevatedButton(
                color: Colors.white,
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Text(
                  'Confirmation',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Container(
            height: 50,
            width: width * 0.4,
            child: CustomElevatedButton(
                color: Color(0xffD9534F),
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
          )
        ],
      ))
    ]));
  }

  Align checkBoxTile(double width) {
    return Align(
      alignment: Alignment(-0.3, 0),
      child: Container(
        height: 40,
        width: width * 0.065,
        child: CheckboxListTile(
          value: false,
          onChanged: (value) {},
          title: Text('I agree'),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}

class RowTextAndField extends StatelessWidget {
  const RowTextAndField({
    Key? key,
    required this.width,
    required this.authcontroller,
    required this.fieldName,
    this.hintText,
    this.dropDownField,
  }) : super(key: key);

  final double width;
  final authController authcontroller;
  final String fieldName;
  final String? hintText;
  final bool? dropDownField;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: width * 0.60,
      child: Row(
        children: [
          Container(
              alignment: Alignment.centerRight,
              width: 180,
              child: Text(
                fieldName,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: width * 0.01,
          ),
          Container(
            width: width * 0.4,
            child: dropDownField == true
                ? DropDownFieldWidget()
                : customtextformfield(
                    hinttext: hintText ?? '',
                    controller: authcontroller.firstNameController),
          ),
        ],
      ),
    );
  }
}

class RowTextAndText extends StatelessWidget {
  const RowTextAndText({
    Key? key,
    required this.width,
    required this.fieldName,
    this.text,
    this.height,
  }) : super(key: key);

  final double width;
  final double? height;

  final String fieldName;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 30,
      width: width * 0.60,
      child: Row(
        children: [
          Container(
              alignment: Alignment.centerRight,
              width: 180,
              child: Text(
                fieldName,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: width * 0.01,
          ),
          Container(width: width * 0.4, child: Text(text ?? '')),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final onPressed;
  final Widget? child;
  final borderRadius;
  final color;
  final size;
  final bool enabled;

  CustomElevatedButton({
    this.onPressed,
    this.child,
    this.borderRadius,
    this.color,
    this.size,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !enabled ? null : onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
          !enabled ? Colors.grey[200] : color ?? Colors.white,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.black),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          size ?? Size(MediaQuery.of(context).size.width, 45),
        ),
      ),
      child: child,

      // style: ElevatedButton.styleFrom(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: borderRadius ?? BorderRadius.circular(10.0),
      //   ),

      //   primary: color ?? kPrimaryColor,
      // minimumSize: Size(50.w, 50.h),
      // ),
    );
  }
}
