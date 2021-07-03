import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:audacity_task/utility/text_style.dart';
import 'package:flutter/material.dart';

class ProductsUi extends StatelessWidget {

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
                            image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/000/550/731/small/user_icon_004.jpg"))),
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
                            "shopper Name",
                            style: commonPoppinsTextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Text(
                            "post time ago",
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
                text: "home products statue",
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: blackColor,
                isCentre: false,
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.symmetric( vertical: 4, horizontal: 4),
              child: Image.network("https://images.unsplash.com/photo-1546587348-d12660c30c50?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG5hdHVyYWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),

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
                       child: Text("MYR 9.00",
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
                       child: Text("20 Available Stock",
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
                       child: Text("1 Order(s)",
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
