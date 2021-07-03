import 'package:audacity_task/home_page/model/trending_products_model.dart';
import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:audacity_task/utility/text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingProducts extends StatelessWidget {
  final TrendngProductsModel? trendingProducts;
  TrendingProducts({this.trendingProducts});

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
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(trendingProducts?.productImage ?? "",),
                      fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))
                  ),
                ),
                Container(
                  color: whiteColor,
                  width: 130,
                  padding: EdgeInsets.only(top: 4),
                  child: Text(trendingProducts?.productName ?? "",
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
                    text: "price: BDT ${trendingProducts?.unitPrice}",
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