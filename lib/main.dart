import 'package:flutter/material.dart';
import 'package:practice_app/green_button_with_icon.dart';
import 'package:practice_app/special_font.dart';
import 'package:practice_app/profile_name.dart';
import 'package:practice_app/custom_bottom_border.dart';
import 'package:practice_app/custom_row.dart';
// import 'add_property_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'First Page',
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: BottomBorder(
                child: SizedBox(
                  height: 350,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: 60.0,
                          right: 260.0,
                        ),
                        child: CustomText('Profile'),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/avatar_image.jpg'),
                                radius: 60,
                              ),
                            ),
                            ProfileNameText('Vishal Saini'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 10.0,
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 120.0,
                        top: 10.0,
                      ),
                      child: CustomText(
                        'Account Settings',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Adjust as needed
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 0.0,
                        ),
                        child: BottomBorder(
                          child: CustomRow(
                            firstIcon: Icons.person,
                            settingText: 'Personal Information',
                            secondSizedBoxWidth: 125,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Adjust as needed
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 0.0,
                        ),
                        child: BottomBorder(
                          child: CustomRow(
                            firstIcon: Icons.credit_card,
                            settingText: 'Payments',
                            secondSizedBoxWidth: 234,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 10.0,
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 150.0,
                        // top: 10.0,
                      ),
                      child: CustomText(
                        'Other Settings',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Adjust as needed
                  children: <Widget>[
                    SizedBox(
                      // height: 50,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 0.0,
                        ),
                          child: CustomRow(
                            firstIcon: Icons.security,
                            settingText: 'Privacy Policy',
                            secondSizedBoxWidth: 190,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                // bottom: 50.0,
                left: 300.0,
              ),
              child:AddPropertyButton(),
            )
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: Container(
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 229, 240, 229),
              border: Border(
                top: BorderSide(
                  color: Color.fromARGB(119, 197, 197, 197),
                  width: 1.0, // Adjust the width if needed
                ),
              ),
            ),
            child:const Padding(
              padding: EdgeInsets.only(
                top:20.0,
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ 
                  Column(
                    children: [
                      Icon(Icons.home,color: Color.fromARGB(255, 142, 141, 141),size:40),
                      Text('Home',style: TextStyle(color:Color.fromARGB(255, 142, 141, 141),))
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Icon(Icons.person,color: Color.fromARGB(255, 142, 141, 141),size:40),
                      Text('Profile',style: TextStyle(color:Color.fromARGB(255, 142, 141, 141),)),
                    ],
                  ),
                ],
              ),
            ),
            // You can add other decorations or child widgets here
          ),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}


