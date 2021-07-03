
import 'package:audacity_task/home_page/model/newArrivals_model.dart';
import 'package:audacity_task/home_page/model/newShops_model.dart';
import 'package:audacity_task/home_page/model/products_model.dart';
import 'package:audacity_task/home_page/model/trending_products.dart';
import 'package:audacity_task/home_page/model/trending_seller_model.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeBlocState {
  const HomeBlocState();

  @override
  // ignore: override_on_non_overriding_member
  List<Object> get props => [];
}

class HomeBlocInitial extends HomeBlocState {}

class HomeBlocLoading extends HomeBlocState {
  @override
  List<Object> get props => [];
}

class HomeBlocSuccess extends HomeBlocState {
  final List<List<TrendingSellerModel>>? trendingList;
  final List<List<TrendngProductsModel>>? trendingProductList;
  final List<List<ProductsModel>>? productList;
  final List<List<NewShopsModel>>? newShopList;
  final List<List<NewArrivalsModel>>? newArrivalList;

  HomeBlocSuccess({
    this.trendingList,
    this.productList,
    this.trendingProductList,
    this.newShopList,
    this.newArrivalList});

  @override
  List<Object> get props => [];
}

//------------------failure state-----------------

class HomeBlocFailure extends HomeBlocState {
  final String? errorMessage;
  const HomeBlocFailure({this.errorMessage});

  @override
  List<Object> get props => [];
}
