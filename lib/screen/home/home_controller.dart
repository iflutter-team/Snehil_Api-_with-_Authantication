import 'package:api/json_model/photos_model.dart';
import 'package:api/json_model/productModel.dart';
import 'package:api/screen/home/home_api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  bool lode = false;
  ProductModel? productList;

  @override
  void onInit() {
    // TODO: implement onInit
    getProductList();
    super.onInit();
  }

  Future<void> getProductList()async{
    lode = true;
    update(["userList"]);
    productList = await HomeScreenApi.getData();
    print(productList!.products!.first.title);
    lode = false;
    update(["userList"]);
  }

}