import 'package:flutter/material.dart';
import 'package:homecontrole/screem/welcome_page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          
            image:
                DecorationImage(image: AssetImage("assets/images/home.jpg"), fit: BoxFit.cover)),
        child: Container(
                height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(101, 58, 151, 228),
                Color.fromARGB(255, 13, 141, 245),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Home control\nanywhere, anytime",
                style: TextStyle(
                   color: Colors.white,
                   fontSize: 45.sp,
                   //fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 2.h,),
                Text("Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent.",
                style: TextStyle(color:Colors.white),
                ),
                SizedBox(height: 10.w,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> WelcomePage()));
                  },
                  child: Container(
                    height: 15.w,
                    width: MediaQuery.of(context).size.width ,
                    child: Center(child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),
                    )),
                    decoration:
                        BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
