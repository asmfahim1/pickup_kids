import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class SpouseInfoScreen extends StatefulWidget {
  const SpouseInfoScreen({Key? key}) : super(key: key);

  @override
  State<SpouseInfoScreen> createState() => _SpouseInfoScreenState();
}

class _SpouseInfoScreenState extends State<SpouseInfoScreen> {
  final GlobalKey<FormState> _fromKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              ' Register',
              style: TextStyle(
                color: mainBlackColor,

                //changed size instead of 40
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Spouse Information',
                style: TextStyle(
                  color: mainBlackColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: defWhite,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Form(
                    key: _fromKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: 'Spouse Name',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          child: TextFormField(
                            controller: mobileController,
                            decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              prefixIcon: Icon(
                                Icons.phone,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 44,
                          width: 194,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(primary: mainColor),
                            child: Text(
                              'Upload image',
                              style: TextStyle(color: mainBlackColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: elButtonColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(180.0),
                            child: Image.asset(
                              'assets/images/profile3.png',
                              scale: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200, top: 30),
                          child: SizedBox(
                            height: 44,
                            width: 194,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/childInfoScreen');
                              },
                              style:
                                  ElevatedButton.styleFrom(primary: mainColor),
                              child: Text(
                                'Next',
                                style: TextStyle(color: mainBlackColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
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
}
