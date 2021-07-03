import 'package:audacity_task/home_page/ui/widgets/new_arrival/new_arrivals.dart';
import 'package:audacity_task/home_page/ui/widgets/new_shops/new_shops.dart';
import 'package:audacity_task/home_page/ui/widgets/products/products.dart';
import 'package:audacity_task/home_page/ui/widgets/trending_products/trending_products.dart';
import 'package:audacity_task/home_page/ui/widgets/trending_sellers/trensing_sellers.dart';
import 'package:audacity_task/utility/colors.dart';
import 'package:audacity_task/utility/common_test_class.dart';
import 'package:audacity_task/utility/default_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: appSize.width,
            margin: EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

                ///Trending Sellers Section
                Container(
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
                  width: appSize.width,
                  child: Card(
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: CommonTextClass(
                              text: "Trending Sellers",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: blackColor,
                              isCentre: false,
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(10, (index) => TrendingSellers(),),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///Trending Products Section
                Container(
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
                  width: appSize.width,
                  child: Card(
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: CommonTextClass(
                              text: "Trending Products",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: blackColor,
                              isCentre: false,
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(10, (index) => TrendingProducts(),),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///Trending Sellers Products
                Container(
                  width: appSize.width,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(3, (index) => ProductsUi()),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///New Arrivals Section
                Container(
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
                  width: appSize.width,
                  child: Card(
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: CommonTextClass(
                              text: "New Arrivals",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: blackColor,
                              isCentre: false,
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(10, (index) => NewArrivals(),),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///New Arrivals Products Section
                Container(
                  width: appSize.width,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(3, (index) => ProductsUi()),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///New Shops Section
                Container(
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
                  width: appSize.width,
                  child: Card(
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: CommonTextClass(
                              text: "New Shops",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: blackColor,
                              isCentre: false,
                            ),
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(10, (index) => NewShops(),),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 4,),

                ///New Shops Products Section
                Container(
                  width: appSize.width,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(3, (index) => ProductsUi()),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
