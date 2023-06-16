import 'package:api/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      //  appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
            id: "userList",
            builder: (controller) {
              return controller.productList == null
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: ListView.builder(
                        itemCount:
                            controller.productList!.products!.length,
                        itemBuilder: (context, index) => SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: Text(controller
                              .productList!.products![index].title!),
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
