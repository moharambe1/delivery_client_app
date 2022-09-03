import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class PackageAddPage extends StatefulWidget {
  const PackageAddPage({Key? key}) : super(key: key);

  @override
  State<PackageAddPage> createState() => _PackageAddPageState();
}

class _PackageAddPageState extends State<PackageAddPage> {
  String bladia = "biskra";
  int depri = 100;
  bool dafaa = true;
  bool dafaaTawsil = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            //AppBar
            Container(
              width: 100.w,
              height: max(7.h, 25),
              padding: EdgeInsets.only(left: 1.w),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).colorScheme.secondary,
                        blurRadius: 1.0,
                        offset: const Offset(0, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    "اضـافـة طـرد",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Icon(
                    Icons.arrow_back,
                    textDirection: TextDirection.ltr,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ), //Body
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3.h),
                  TextField(
                      showCursor: true,
                      enabled: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("رقـم الهـاتـف :",
                            style: Theme.of(context).textTheme.headline4),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: const Color(0x00000000),
                      )),
                  SizedBox(height: 2.h),
                  Row(children: [
                    Text("البـلديـة :    ",
                        style: Theme.of(context).textTheme.headline4),
                    DropdownButton<String>(
                        value: bladia,
                        items: generateDropDownItems(context),
                        onChanged: (item) {
                          setState(() {
                            bladia = item!;
                          });
                        })
                  ]),
                  SizedBox(height: 3.h),
                  TextField(
                      showCursor: true,
                      enabled: true,
                      decoration: InputDecoration(
                        label: Text("العنـوان (اختياري) :",
                            style: Theme.of(context).textTheme.headline4),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: const Color(0x00000000),
                      )),
                  SizedBox(height: 2.h),
                  Container(
                    height: 2.h,
                    width: 95.w,
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(children: [
                    Text("الدفــع عند التسليــم : ",
                        style: Theme.of(context).textTheme.headline4),
                    Checkbox(
                        value: dafaa,
                        onChanged: (value) {
                          setState(() {
                            dafaa = value!;
                          });
                        })
                  ]),
                  if (dafaa)
                    TextField(
                        showCursor: true,
                        enabled: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text("مبلـغ الطـرد:",
                              style: Theme.of(context).textTheme.headline4),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          filled: true,
                          fillColor: const Color(0x00000000),
                        )),
                  Row(children: [
                    Text("رسوم التوصيل عند التسليــم : ",
                        style: Theme.of(context).textTheme.headline4),
                    Checkbox(
                        value: dafaaTawsil,
                        onChanged: (value) {
                          setState(() {
                            dafaa = value!;
                          });
                        })
                  ]),
                  SizedBox(height: 2.h),
                  Container(
                    height: 2.h,
                    width: 95.w,
                    alignment: Alignment.center,
                    child: Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text("المبلغ قبـل التـوصيـل : ",
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(height: 1.h),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText1,
                          children: [
                        const TextSpan(text: "رسوم التوصيل : "),
                        TextSpan(
                            text: "${depri}DA",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary))
                      ])),
                  SizedBox(height: 2.h),
                  Text("المبلغ عند التـوصيـل : ",
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(height: 1.h),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText1,
                          children: [
                        const TextSpan(text: "مبـلغ الطـرد : "),
                        TextSpan(
                            text: "${depri}DA",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary))
                      ])),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText1,
                          children: [
                        const TextSpan(text: "رسوم التوصيل : "),
                        TextSpan(
                            text: "${depri}DA",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary))
                      ])),
                  SizedBox(height: 2.h),
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontSize: 25),
                          children: [
                        const TextSpan(text: "المجـموع : "),
                        TextSpan(
                            text: "${depri}DA",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary))
                      ])),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> generateDropDownItems(BuildContext context) {
  const bladiaList = [
    ["biskra", "بســكـرة"],
    ["okba", "سيــدي عقــبة"],
  ];

  return List.generate(
      bladiaList.length,
      (index) => DropdownMenuItem(
          value: bladiaList[index][0],
          child: SizedBox(
            width: 50.w,
            child: Text(bladiaList[index][1],
                style: Theme.of(context).textTheme.headline2),
          )));
}
