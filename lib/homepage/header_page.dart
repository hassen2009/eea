import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkRole();
  }
  String role ="user";
  _checkRole()async{
    User? user = FirebaseAuth.instance.currentUser;
    final DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(user?.uid).get();
    setState((){
      role = snap['role'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      height : 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Statut",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Get.isDarkMode?Colors.white:Colors.black),),
              (role=="admin l3")?Container(
                margin: EdgeInsets.all(5),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent
                ),
                child: IconButton(onPressed: (){
                deleteStory2();
                }, icon:Icon(Icons.delete,
                  color: Colors.white,size: 18,)),):(role=="admin")?Container(
                margin: EdgeInsets.all(5),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent
                ),
                child: IconButton(onPressed: (){
                  deleteStory();
                }, icon:Icon(Icons.delete,
                  color: Colors.white,size: 18,)),):Container()
            ],
          )
        ],
      )
    );
  }
  Future<void> deleteStory2()async{
    var collection = FirebaseFirestore.instance.collection("story2");
    var snapshot = await collection.get();
    for(var doc in snapshot.docs){
      await doc.reference.delete();
    }
  }
  Future<void> deleteStory()async{
    var collection = FirebaseFirestore.instance.collection("story");
    var snapshot = await collection.get();
    for(var doc in snapshot.docs){
      await doc.reference.delete();
    }
  }
}
