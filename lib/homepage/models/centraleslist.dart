import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/homepage/models/Centrales.dart';

import 'detail.dart';

class Ctrle extends StatelessWidget {
  Ctrle({Key? key}) : super(key: key);


final List<Pic> Sower = Pic.Sower();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 8.0),
              scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => GestureDetector(
                  onTap: ( ()=>Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>detaille(Sower[index]))))),
                  child: Card(
                    color: Get.isDarkMode?Colors.grey[900]:Colors.grey[300],
                    elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                          child: Image.asset(Sower[index].bgImage),
                        )
                      ),

                  ),
                )),
                separatorBuilder: ((context, index) => const SizedBox(width: 14,)),
                itemCount: Sower.length
            ),
          ),
        ],
      ),
    );
  }
}

