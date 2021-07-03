import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:audacity_task/utility/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 4, bottom: 6, left: 4,),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))
                  ),
                ),
                Container(
                  color: whiteColor,
                  width: 130,
                  padding: EdgeInsets.only(top: 4),
                  child: Text("NewArrivals products title",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: commonPoppinsTextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        size: 12
                    ),),
                ),

                Container(
                  color: whiteColor,
                  padding: EdgeInsets.only(top: 4),
                  child: CommonTextClass(
                    text: "NewArrivals products price",
                    fontWeight: FontWeight.w300,
                    fontSize: 10,
                    color: blackColor,
                    isCentre: true,
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}