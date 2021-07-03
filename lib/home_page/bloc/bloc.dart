
import 'package:audacity_task/home_page/model/newArrivals_model.dart';
import 'package:audacity_task/home_page/model/newShops_model.dart';
import 'package:audacity_task/home_page/model/products_model.dart';
import 'package:audacity_task/home_page/model/trending_products_model.dart';
import 'package:audacity_task/home_page/model/trending_seller_model.dart';
import 'package:audacity_task/home_page/repository/home_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';


class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState>
    with ChangeNotifier {
  HomeRepository repository = HomeRepository();

   List<List<TrendingSellerModel>> trendingList = [];
   List<List<TrendngProductsModel>> trendingProductList = [];
   List<List<ProductsModel>> productList = [];
   List<List<NewShopsModel>> newShopList = [];
   List<List<NewArrivalsModel>> newArrivalList = [];

  HomeBloc({required this.repository}) : super(HomeBlocInitial());

  @override
  Stream<HomeBlocState> mapEventToState(HomeBlocEvent event) async* {

    if (event is HomeBlocSuccessEvent) {

      yield HomeBlocLoading();

      final results = await Future.wait([
        repository.getTrendingSellersData(),
        repository.trendingProductsData(),
        repository.newArrivalsData(),
        repository.newShopsData(),
        repository.productsData()
      ]);

      if(results[0]){
        trendingList = trendngSellerModelFromJson(repository.trendingSellersBody);
        trendingProductList = trendngProductsModelFromJson(repository.trendingProductsBody);
        productList = productsModelFromJson(repository.productsBody);
        newShopList = newShopsModelFromJson(repository.newShopsBody);
        newArrivalList = newArrivalsModelFromJson(repository.newArrivalsBody);

        yield HomeBlocSuccess(
            trendingList: trendingList,
            productList: productList,
            trendingProductList: trendingProductList,
            newShopList: newShopList,
            newArrivalList: newArrivalList);
      }else{
        yield HomeBlocFailure(errorMessage: 'Server Error!');
      }
    }
  }
}
