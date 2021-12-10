import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.increase,
  }) : super(key: key);

  final String title;
  final String price;
  final String image;
  final VoidCallback increase;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 24 * kDefaultSize,
          height: 32 * kDefaultSize,
          decoration: BoxDecoration(
            color: Colors.grey[100]!.withOpacity(.6),
            borderRadius: BorderRadius.circular(2 * kDefaultSize),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultSize, vertical: 1.2 * kDefaultSize),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2 * kDefaultSize),
                  ),
                  child: SizedBox(
                    width: 20 * kDefaultSize,
                    height: 20 * kDefaultSize,
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultSize),
                      child: Image.network(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2 * kDefaultSize),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 12 * kDefaultSize,
                          child: Text(
                            title,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 2 * kDefaultSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: .5 * kDefaultSize),
                        Text(
                          '\$$price',
                          style: const TextStyle(
                            fontSize: 1.8 * kDefaultSize,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 4 * kDefaultSize,
                      height: 4 * kDefaultSize,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: increase,
                        icon: const Icon(
                          Icons.add,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
