import 'package:audacity_task/home_page/model/products_model.dart';
import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:audacity_task/utility/default_size.dart';
import 'package:audacity_task/utility/text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductsUi extends StatelessWidget {
  final ProductsModel? productsModel;
  ProductsUi({this.productsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4,),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0.0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    margin: EdgeInsets.only(top: 16, left: 8),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: const Color(0x33A6A6A6)),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(productsModel?.companyLogo ?? "",),
                        fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            productsModel?.companyName ?? "",
                            style: commonPoppinsTextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Text(
                            productsModel?.friendlyTimeDiff ?? "",
                            style: commonPoppinsTextStyle(
                                color: timeAgoTextColor,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.only( left: 40,),
              child: CommonTextClass(
                text: productsModel?.story ?? "",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: blackColor,
                isCentre: false,
              ),
            ),
            SizedBox(height: 8,),
            Container(
              width: appSize.width,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric( vertical: 4, horizontal: 4),
              child: CachedNetworkImage(
                imageUrl: productsModel?.storyImage ?? "",
                placeholder: (context, url) => SizedBox(
                  width: appSize.width,
                  height: 100.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.withOpacity(0.7),
                    highlightColor: Colors.grey.withOpacity(0.1),
                    child: Text(''),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        color: blackColor,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("BDT ${productsModel?.unitPrice}",
                       style: commonPoppinsTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_outlined,
                        color: blackColor,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("${productsModel?.availableStock} Available Stock",
                       style: commonPoppinsTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: blackColor,
                        size: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                       child: Text("${productsModel?.orderQty} Order(s)",
                       style: commonPoppinsTextStyle(
                         fontWeight: FontWeight.w700,
                         size: 12
                       ),)
                      )
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
