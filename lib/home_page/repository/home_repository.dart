import 'dart:convert';
import 'dart:io';

import 'package:audacity_task/utility/api_access.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class HomeRepository{
  dynamic trendingSellersBody;
  dynamic trendingProductsBody;
  dynamic newArrivalsBody;
  dynamic newShopsBody;
  dynamic productsBody;

  Future<bool> getTrendingSellersData() async {
    Map<String, String> header = new Map();
    header["Accept"] = "application/json";
    header["Content-Type"] = "application/json";

    Uri uri = Uri.parse("${ApiAccess.trendingSellers}");
    print("getTrendingSellersData uri: $uri");

    String fileName = "trendingSellers.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if(file.existsSync()){
      print("fetching from device cache");

      //read from cache
      final data = file.readAsStringSync();

      trendingSellersBody = data;

      return true;
    }else{
      print("fetching from network");

      //read from network
      final response = await http.get(uri, headers: header);

      if(response.statusCode == 200){
        String body = utf8.decode(response.bodyBytes);

        //save json to cache
        file.writeAsStringSync(body,flush: true, mode: FileMode.write);

        trendingSellersBody = body;
        return true;
      }else{

        trendingSellersBody = utf8.decode(response.bodyBytes);
        return false;
      }
    }
  }

  Future<bool> trendingProductsData() async {
    Map<String, String> header = new Map();
    header["Accept"] = "application/json";
    header["Content-Type"] = "application/json";

    Uri uri = Uri.parse("${ApiAccess.trendingProducts}");
    print("getTrendingSellersData uri: $uri");

    String fileName = "trendingProducts.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if(file.existsSync()){
      print("fetching from device cache");

      //read from cache
      final data = file.readAsStringSync();

      trendingProductsBody = data;

      return true;
    }else{
      print("fetching from network");

      //read from network
      final response = await http.get(uri, headers: header);

      if(response.statusCode == 200){
        final body = utf8.decode(response.bodyBytes);

        //save json to cache
        file.writeAsStringSync(body,flush: true, mode: FileMode.write);

        trendingProductsBody = body;
        return true;
      }else{

        trendingProductsBody = utf8.decode(response.bodyBytes);
        return false;
      }
    }
  }

  Future<bool> newArrivalsData() async {
    Map<String, String> header = new Map();
    header["Accept"] = "application/json";
    header["Content-Type"] = "application/json";

    Uri uri = Uri.parse("${ApiAccess.newArrivals}");
    print("getTrendingSellersData uri: $uri");

    String fileName = "newArrivals.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if(file.existsSync()){
      print("fetching from device cache");

      //read from cache
      final data = file.readAsStringSync();

      newArrivalsBody = data;

      return true;
    }else{
      print("fetching from network");

      //read from network
      final response = await http.get(uri, headers: header);

      if(response.statusCode == 200){
        final body = utf8.decode(response.bodyBytes);

        //save json to cache
        file.writeAsStringSync(body,flush: true, mode: FileMode.write);

        newArrivalsBody = body;
        return true;
      }else{

        newArrivalsBody = utf8.decode(response.bodyBytes);
        return false;
      }
    }
  }

  Future<bool> newShopsData() async {
    Map<String, String> header = new Map();
    header["Accept"] = "application/json";
    header["Content-Type"] = "application/json";

    Uri uri = Uri.parse("${ApiAccess.newShops}");
    print("getTrendingSellersData uri: $uri");

    String fileName = "newShops.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if(file.existsSync()){
      print("fetching from device cache");

      //read from cache
      final data = file.readAsStringSync();

      newShopsBody = data;

      return true;
    }else{
      print("fetching from network");

      //read from network
      final response = await http.get(uri, headers: header);

      if(response.statusCode == 200){
        final body = utf8.decode(response.bodyBytes);

        //save json to cache
        file.writeAsStringSync(body,flush: true, mode: FileMode.write);

        newShopsBody = body;
        return true;
      }else{

        newShopsBody = utf8.decode(response.bodyBytes);
        return false;
      }
    }
  }

  Future<bool> productsData() async {
    Map<String, String> header = new Map();
    header["Accept"] = "application/json";
    header["Content-Type"] = "application/json";

    Uri uri = Uri.parse("${ApiAccess.stories}");
    print("getTrendingSellersData uri: $uri");

    String fileName = "products.json";
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if(file.existsSync()){
      print("fetching from device cache");

      //read from cache
      final data = file.readAsStringSync();

      productsBody = data;

      return true;
    }else{
      print("fetching from network");

      //read from network
      final response = await http.get(uri, headers: header);

      if(response.statusCode == 200){
        final body = utf8.decode(response.bodyBytes);

        //save json to cache
        file.writeAsStringSync(body,flush: true, mode: FileMode.write);

        productsBody = body;
        return true;
      }else{

        productsBody = utf8.decode(response.bodyBytes);
        return false;
      }
    }
  }
}