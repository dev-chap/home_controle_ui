import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class LivingRoomPage extends StatefulWidget {
  const LivingRoomPage({super.key});

  @override
  State<LivingRoomPage> createState() => _LivingRoomPageState();
}

class _LivingRoomPageState extends State<LivingRoomPage> {
  bool _showBlueBox = false;
  bool _showBlueBox2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [

            Row(
              
              children: [
                   Container(
                                     height: 13.w,
                                     width: 13.w,
                                     decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:Border.all(color:Colors.grey),
                    
                                     ),
                                     child: Icon(Icons.arrow_back_ios, size: 15,),
                                   ),
                                   SizedBox(width: 15.w,),
                Column(
                  children: [
                    Text("Living room",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),
                    ),
                         Text("Speaker Halo 2",
                    style: TextStyle(
                      fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                  
                  ],
                ),
             
              ],
            ),
               SizedBox(
              height: 1.h,
            ),
           
            
            Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height /7.5 ,
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                              
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Image.asset("assets/images/img2.png")
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 7),
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Enhanced audio \n experience with speaker",
                             
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 5.h,
                                          width: 22.w,
                                          decoration: BoxDecoration(
                                           color: Color.fromARGB(255, 209, 208, 208),
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              RotationTransition(
                                             turns: new AlwaysStoppedAnimation(90 / 360),
                                                child: Icon(Icons.battery_6_bar_sharp, size: 27,)),
                                              Text("98%", style: TextStyle(fontSize: 17),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 1.w,),
                                        Container(
                                     child: Row(
                                                                   children: [
                                                                     Container(
                                      height: 5.h,
                                      width: 22.w,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 209, 208, 208),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.sunny, size: 27,),
                                          Text("64%", style: TextStyle(fontSize: 17),)
                                        ],
                                      ),
                                                                     ),
                                                                   ],
                                                                 ),
                                   )
                                ],
                              ),
                           
                             
                            ],
                           ),
                         )  
                      ],
                    ),
                    ),
                        SizedBox(
              height: 0.5.h,
            ),
                               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height:12.w,
                        width: 12.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 208, 208),
                        ),
                        child: Icon(
                          Icons.energy_savings_leaf_outlined,
                          size: 30,
                        ),
                      ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Text("12KwH",
                           style: TextStyle(fontWeight: FontWeight.bold,
                           fontSize: 19
                           ),
                           ),
                             Text("10 hours",
                           style: TextStyle(color: Colors.grey,
                           fontSize: 15
                           ),
                           )
                          ],
                        ),
                    ],
                  ),
                ),
         Container(
                  height: 23.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height:12.w,
                        width: 12.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 208, 208),
                        ),
                        child: Icon(
                          Icons.alarm,
                          size: 30,
                        ),
                      ),
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
             Container(
                  height: 24.w,
                  width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                         height: 24.w,
                       width: MediaQuery.of(context).size.width/4 ,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)
                         ),
                       color: Color.fromARGB(255, 13, 141, 245),
                        ),
                        child: Icon(
                          Icons.ring_volume_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                       Container(
                        
                        height: 25.w,
                  width: MediaQuery.of(context).size.width/1.5 ,
                        child: Center(child: Text('34%')))
                    ],
                  ),
                ),
            SizedBox(
             height: 0.5.h,
            ),
              Container(
                  height: 24.w,
                  width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                         height: 24.w,
                       width: MediaQuery.of(context).size.width/1.5 ,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)
                         ),
                       color: Color.fromARGB(255, 13, 141, 245),
                        ),
                        child: Icon(
                          Icons.sunny,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                       Container(
                        
                        height: 24.w,
                  width: MediaQuery.of(context).size.width/4 ,
                        child: Center(child: Text('76%')))
                    ],
                  ),
                ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height:12.w,
                        width: 12.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 208, 208),
                        ),
                        child: Icon(
                          Icons.wifi,
                          size: 30,
                        ),
                      ),
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
                    ],
                  ),
                ),
         Container(
                  height: 23.w,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(30)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height:12.w,
                        width: 12.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 209, 208, 208),
                        ),
                        child: Icon(
                          Icons.bluetooth,
                          size: 30,
                        ),
                      ),
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
                    ],
                  ),
                ),
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

