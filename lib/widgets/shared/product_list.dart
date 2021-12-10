import 'package:flutter/material.dart';
import 'package:online_store/api/http_service.dart';
import 'package:online_store/constants.dart';
import 'package:online_store/models/models.dart';
import 'package:online_store/widgets/shared/product_card.dart';

class ProductList extends StatelessWidget {
  final _httpService = HttpService();
  ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder(
        future: _httpService.getProducts(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.only(left: kDefaultSize * 1.5),
                      child: Container(
                        alignment: Alignment.center,
                        width: kDefaultSize * 24,
                        height: kDefaultSize * 32,
                        decoration: BoxDecoration(
                          color: Colors.grey[100]!.withOpacity(.6),
                          borderRadius: BorderRadius.circular(2 * kDefaultSize),
                        ),
                        child: const CircularProgressIndicator(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            default:
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                List<Product>? products = snapshot.data as List<Product>;
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => ProductCard(
                        title: products[index].title,
                        price: products[index].price.toString(),
                        image: products[index].image,
                        increase: () {},
                      ),
                    ),
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
