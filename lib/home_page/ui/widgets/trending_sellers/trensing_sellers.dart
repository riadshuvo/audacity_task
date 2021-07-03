import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingSellers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4, bottom: 6, left: 4,),
      child: Stack(
        children: [
          Container(
            height: 190,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8)
            ),
          ),
          Positioned(
            top: 6,
            left: 6,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: trendingTitleColor.withOpacity(0.3),
              child: CommonTextClass(
                text: "Trending Sellers status",
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: whiteColor,
                isCentre: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
