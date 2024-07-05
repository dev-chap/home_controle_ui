import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homecontrole/screem/living_Room_Page.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _showBlueBox = false;
  bool _showBlueBox2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Welcome to your \n Smart Home Liam",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                Container(
                  height: 13.w,
                  width: 13.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/home.jpg"), fit: BoxFit.cover)
                  ),
                )
              ],
            ),
               SizedBox(
              height: 1.h,
            ),
            Container(
              height: 11.w,
             child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 8.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    child: Center(child: Text("All")),
                  ),
                ),
                 InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LivingRoomPage()));
                  },
                   child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      height: 10.w,
                      width: 33.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: Color.fromARGB(255, 13, 141, 245),
                      ),
                      child: Center(child: Text("Living Room", style: TextStyle(
                        color: Colors.white
                      ),)),
                    ),
                                   ),
                 ),
                    Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                 
                    width: 22.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    child: Center(child: Text("Kitchen")),
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    
                    width: 22.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 236, 236, 236),
                    ),
                    child: Center(child: Text("Bedroom")),
                  ),
                ),
              ],
             ),
            ),
              SizedBox(
              height: 2.h,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                         Column(
                          children: [

                          ],
                         )  
                      ],
                    ),
                    ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Air purifier",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                Icons.water_drop_outlined,
                                size: 30,
                                color: Colors.grey,
                              ),
                              Text(
                                "24%",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CupertinoSwitch(
                            activeColor: Color.fromARGB(255, 13, 141, 245),
                            trackColor: CupertinoColors.inactiveGray,
                            thumbColor: CupertinoColors.white,
                            value: _showBlueBox,
                            onChanged: (value) {
                              setState(() {
                                _showBlueBox = value;
                              });
                            },
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: 29.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/img2.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Air purifier",
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              RotationTransition(
                                  turns: new AlwaysStoppedAnimation(90 / 360),
                                  child: Icon(
                                    Icons.battery_6_bar_sharp,
                                    size: 30,
                                    color: Colors.grey,
                                  )),
                              Text(
                                "99%",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CupertinoSwitch(
                            activeColor: Color.fromARGB(255, 13, 141, 245),
                            trackColor: CupertinoColors.inactiveGray,
                            thumbColor: CupertinoColors.white,
                            value: _showBlueBox2,
                            onChanged: (value) {
                              setState(() {
                                _showBlueBox2 = value;
                              });
                            },
                          ),
                          Container(
                           
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: 29.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/img2.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 24.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.h_plus_mobiledata_outlined,
                        size: 30,
                      ),
                      Text(
                        "Humidity",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 24.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_connected_no_internet_0_bar_sharp,
                        size: 30,
                      ),
                      Text(
                        "Heating",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 18.w,
                  width: 20.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 13, 141, 245),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 18.w,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 18.w,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 18.w,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
