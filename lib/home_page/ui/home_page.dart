import 'package:audacity_task/home_page/bloc/bloc.dart';
import 'package:audacity_task/home_page/bloc/event.dart';
import 'package:audacity_task/home_page/bloc/state.dart';
import 'package:audacity_task/home_page/repository/home_repository.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              HomeBloc(repository: HomeRepository())
          ..add(HomeBlocSuccessEvent()),
          child: BlocBuilder<HomeBloc, HomeBlocState>(
              builder: (context, state) {
                if (state is HomeBlocLoading) {
                  return Container(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  );
                }

                if (state is HomeBlocFailure) {
                  return Container(
                      height: appSize.height - 60,
                      child: Center(
                        child: Text(
                          state.errorMessage!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ));
                }
                if (state is HomeBlocSuccess) {
                  return SingleChildScrollView(
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
                                          children: List.generate(state.trendingList!.first.length,
                                                (index) => TrendingSellers(
                                                    trendingSellerModel: state.trendingList!.first[index]
                                                ),),
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
                                          children: List.generate(state.trendingProductList!.first.length,
                                                (index) => TrendingProducts(
                                                  trendingProducts: state.trendingProductList!.first[index],
                                                ),),
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
                                          children: List.generate(state.newArrivalList!.first.length,
                                                (index) => NewArrivals(
                                                    newArrivalsModel:state.newArrivalList!.first[index]
                                          ),),
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
                                          children: List.generate(state.newShopList!.first.length,
                                                (index) => NewShops(
                                                    newShops:state.newShopList!.first[index]
                                                ),),
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
                  );
                }
                return Container(
                  width: 0.0,
                  height: 0.0,
                );
              }),
        ),
        
      ),
    );
  }
}
